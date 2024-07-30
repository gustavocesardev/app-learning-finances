import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

import 'package:flutter_financas/presentation/widgets/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/bottom_bar.dart';
import 'package:flutter_financas/presentation/widgets/button.dart';

class TemaListagemScreen extends StatefulWidget {
  static const routeName = '/tema/listagem';

  const TemaListagemScreen({super.key});

  @override
  State<TemaListagemScreen> createState() => _TemaListagemScreenState();
}

class _TemaListagemScreenState extends State<TemaListagemScreen> {

  // Lista de temas e suas respectivas semanas
  final List<Map<String, dynamic>> temas = [
    {'tema': 'INVESTIMENTOS E MERCADO FINANCEIRO', 'icone': Icons.money},
    {'tema': 'PLANEJAMENTO E APOSENTADORIA', 'icone': Icons.insert_chart_outlined_rounded},
    {'tema': 'ORCAMENTO PESSOAL', 'icone': Icons.cases_sharp},
    {'tema': 'IMPOSTOS E TRIBUTAÇÃO', 'icone': Icons.attach_money_rounded},
    {'tema': 'GESTÃO DE DÍVIDAS', 'icone': Icons.payments_outlined},
    {'tema': 'MERCADO IMOBILIÁRIO', 'icone': Icons.house}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const CustomAppBar(title: 'Temas'),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    child: const Text(
                      'LISTAGEM DE TEMAS',
                      style: TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      softWrap: true, // Habilita a quebra automática de linha
                      overflow: TextOverflow.visible, // Garante que o texto seja exibido completo, mesmo que ultrapasse o limite
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: temas.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        child: SizedBox(
                        width: 375,
                        height: 75,
                        child: LargeButtonWithIcon(
                          textButton: temas[index]['tema'],
                          icon: temas[index]['icone'],
                          fontSize: 14,
                          onPressed: () {},
                        ),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: const CustomNavigationBarHome(),
      ),
    );
  }
}