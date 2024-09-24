import 'package:flutter/material.dart';

import 'package:flutter_financas/presentation/providers/quiz_provider.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

import 'package:flutter_financas/presentation/widgets/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/button.dart';
import 'package:flutter_financas/presentation/widgets/quiz_option.dart';

import 'package:provider/provider.dart';

class Quiz extends StatelessWidget {
  static const routeName = '/desafio/quiz';

  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    final quizProvider = Provider.of<QuizProvider>(context);

    return Scaffold(
      appBar: const DesafioAppBar(title: 'Quiz'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 25),
                child: Center(
                  child: Text(
                    'PERGUNTA ${quizProvider.numeroPerguntaAtual + 1}/${quizProvider.quiz.length}',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: ColorConstants.primaryColor,
                    ),
                  ),
                ),
              ),
              Text(
                quizProvider.quiz[quizProvider.numeroPerguntaAtual].pergunta,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.primaryColor,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Apenas uma resposta correta',
                style: TextStyle(
                  fontSize: 16,
                  color: ColorConstants.secondColor,
                ),
              ),
              const SizedBox(height: 20),
              ...quizProvider.quiz[quizProvider.numeroPerguntaAtual].alternativas.map((alternativa) {
                final key = alternativa.keys.first;
                final value = alternativa[key];
                return OptionWidget(
                  option: key,
                  text: value!,
                  isSelected: quizProvider.alternativaSelecionada == key,
                  onTap: () => quizProvider.selecionarAlternativa(key),
                );
              }),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Button(
                    onPressed: () {
                      quizProvider.responderPergunta();
                    },
                    textButton: quizProvider.numeroPerguntaAtual < quizProvider.quiz.length - 1 ? 'Próxima' : 'Concluir',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
