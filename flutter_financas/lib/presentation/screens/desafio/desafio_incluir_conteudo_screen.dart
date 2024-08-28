import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

import 'package:flutter_financas/presentation/widgets/bottom_bar.dart';
import 'package:flutter_financas/presentation/widgets/desafios.dart';

class DesafioConteudo extends StatefulWidget {
  static const routeName = '/desafio/incluir/conteudo';

  const DesafioConteudo({super.key});

  @override
  State<DesafioConteudo> createState() => _DesafioConteudoState();
}

class _DesafioConteudoState extends State<DesafioConteudo> {
  final List<Match> matches = [];
  final List<String> items = [
    'Juros simples',
    'Juros compostos',
    'Renda variável',
    'Renda fixa'
  ];
  final List<String> targets = [
    'Acréscimo calculado sobre o valor inicial',
    'Acréscimo calculado sobre atualização do capital',
    'O rendimento não é previsível',
    'O cálculo da remuneração é definida de forma antecipada'
  ];

  Map<String, String> relacaoCorreta = {
    'Juros simples': 'Acréscimo calculado sobre o valor inicial',
    'Juros compostos': 'Acréscimo calculado sobre atualização do capital',
    'Renda variável': 'O rendimento não é previsível',
    'Renda fixa': 'O cálculo da remuneração é definida de forma antecipada'
  };

  Map<String, String?> relacaoAtual = {
    'Juros simples': null,
    'Juros compostos': null,
    'Renda variável': null,
    'Renda fixa': null
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: const Text(
                      'MODELOS DE CONTEÚDOS DE MINAGAMES!',
                      style: TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  RelacionarColunas(
                    items: items,
                    targets: targets,
                    relacaoAtual: relacaoAtual,
                    relacaoCorreta: relacaoCorreta
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavigationBarHome(),
    );
  }
}
