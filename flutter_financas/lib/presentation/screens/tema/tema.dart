import 'package:flutter/material.dart';

import 'package:flutter_financas/presentation/screens/tema/inclusao.dart';
import 'package:flutter_financas/presentation/screens/tema/listagem.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

import 'package:flutter_financas/presentation/widgets/common/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/bottom_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/button.dart';
import 'package:flutter_financas/presentation/widgets/common/list.dart';

class Tema extends StatefulWidget {
  static const routeName = '/tema';

  const Tema({super.key});

  @override
  State<Tema> createState() => _TemaState();
}

class _TemaState extends State<Tema> {

  // Lista de temas e suas respectivas semanas
  final List<Map<String, dynamic>> temas = [
    {'tema': 'INVESTIMENTOS E MERCADO FINANCEIRO', 'semana': '23'},
    {'tema': 'PLANEJAMENTO E APOSENTADORIA', 'semana': '24'},
    {'tema': 'ORCAMENTO PESSOAL', 'semana': '25'},
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const CustomAppBar(title: 'Temas',),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    color: ColorConstants.primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(15),
                              child: const Text(
                                'PRÓXIMOS TEMAS PROGRAMADOS',
                                style: TextStyle(
                                  color: ColorConstants.thirdColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                softWrap: true, 
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: temas.length,
                    itemBuilder: (context, index) {
                      return SimpleList(
                        title: temas[index]['tema'],
                        subtitle: 'SEMANA ${temas[index]['semana']}',
                      );
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: ShortButton(
                      onPressed: () {},
                      textButton: 'VISUALIZAR PROGRAMAÇÃO COMPLETA'
                    )
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text(
                          'GERENCIAR TEMAS',
                          style: TextStyle(
                            color: ColorConstants.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                          ),
                        )
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: SizedBox(
                          width: 375,
                          height: 75,
                          child: LargeButtonWithIcon(
                            textButton: 'ADICIONAR NOVO TEMA',
                            icon: Icons.bookmark_add,
                            onPressed: () {
                              // Navegação através de rotas nomeadas
                              Navigator.pushNamed(context, TemaInclusao.routeName);
                            }
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: SizedBox(
                          width: 375,
                          height: 75,
                          child: LargeButtonWithIcon(
                            textButton: 'LISTAGEM DE TEMAS',
                            icon: Icons.menu,
                            onPressed: () {
                              // Navegação através de rotas nomeadas
                              Navigator.pushNamed(context, TemaListagem.routeName);
                            }
                          ),
                        ),
                      )
                    ],
                  )
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