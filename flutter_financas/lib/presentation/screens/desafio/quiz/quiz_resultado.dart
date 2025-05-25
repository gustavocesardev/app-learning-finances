import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/providers/quiz.dart' as provider;
import 'package:flutter_financas/presentation/screens/desafio/quiz/quiz.dart' as screen;
import 'package:flutter_financas/presentation/screens/home/home.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';
import 'package:flutter_financas/presentation/widgets/common/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/button.dart';

class QuizResultado extends StatelessWidget {
  static const routeName = '/desafio/quiz/resultado';

  const QuizResultado({super.key});

  @override
  Widget build(BuildContext context) {
    final provider.Arguments? args = ModalRoute.of(context)?.settings.arguments as provider.Arguments?;

    int acertos = args?.totalAcertos ?? 0;
    int totalPerguntas = args?.totalPerguntas ?? 0;
    double percentual = (acertos / totalPerguntas) * 100;

    // Define a cor baseada no percentual de acertos
    Color resultadoCor = percentual >= 70
        ? ColorConstants.primaryColor
        : (percentual >= 40 ? const Color.fromARGB(231, 245, 178, 78) : ColorConstants.wrongAnswer);

    IconData iconeResultado = percentual >= 70 ? Icons.check_circle : Icons.error;

    // Mensagem personalizada baseada no resultado
    String mensagemResultado = percentual >= 70
        ? 'Parabéns! Você se saiu muito bem no quiz!'
        : (percentual >= 40 ? 'Você está quase lá, continue tentando!' : 'Você pode melhorar, estude um pouco mais!');

    return Scaffold(
      appBar: const DesafioAppBar(title: 'Quiz'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'RESULTADO',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: ColorConstants.primaryColor,
                ),
              ),
              const SizedBox(height: 20),
              
              // Ícone de resultado
              Icon(
                iconeResultado,
                size: 100,
                color: resultadoCor,
              ),
              
              const SizedBox(height: 20),
              
              // Círculo com resultado
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: resultadoCor,
                        width: 10,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '$acertos',
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: resultadoCor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
              const SizedBox(height: 20),
              
              // Exibe mensagem com base no resultado
              Text(
                mensagemResultado,
                style: TextStyle(
                  fontSize: 18,
                  color: resultadoCor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 80),

              // Botões mais bem dispostos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Button(
                        onPressed: () {
                          Navigator.pushNamed(context, screen.Quiz.routeName);
                        },
                        textButton: 'Refazer o quiz',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Button(
                        onPressed: () {
                          Navigator.pushNamed(context, Home.routeName);
                        },
                        textButton: 'Avançar',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
