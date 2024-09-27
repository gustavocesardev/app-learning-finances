import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/screens/desafio/minigames/storytelling.dart';
import 'package:flutter_financas/presentation/screens/desafio/quiz/quiz.dart';

import 'package:flutter_financas/presentation/themes/colors_constants.dart';

import 'package:flutter_financas/presentation/widgets/common/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/button.dart';

import 'package:flutter_financas/presentation/providers/quiz_provider.dart';

class QuizResultado extends StatelessWidget {
  static const routeName = '/desafio/quiz/resultado';

  const QuizResultado({super.key});

  @override
  Widget build(BuildContext context) {

    // Verifica se o ModalRoute e os argumentos não são nulos
    final Arguments? args = ModalRoute.of(context)?.settings.arguments as Arguments?;

    return Scaffold(
      appBar: const DesafioAppBar(
        title: 'Quiz'
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 25),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        'RESULTADO',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: ColorConstants.primaryColor,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${args?.totalAcertos ?? 0}',
                            style: const TextStyle(
                              fontSize: 150,
                              fontWeight: FontWeight.w900,
                              color: ColorConstants.primaryColor,
                            ),
                          ),
                          Text(
                            ' /${args?.totalPerguntas ?? 0}',
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: ColorConstants.primaryColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ),
              ),
              Center(
                child: Button(
                  onPressed: () {
                    Navigator.pushNamed(context, Quiz.routeName);
                  },
                  textButton: 'Refazer o quiz',
                ),
              ),
              Center(
                child: Button(
                  onPressed: () {
                    Navigator.pushNamed(context, Storytelling.routeName);
                  },
                  textButton: 'Avançar',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
