import 'package:flutter/material.dart';

import 'package:flutter_financas/presentation/screens/cronograma/cronograma.dart';
import 'package:flutter_financas/presentation/screens/tema/tema.dart';

import 'package:flutter_financas/presentation/themes/colors_constants.dart';

import 'package:flutter_financas/presentation/widgets/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/bottom_bar.dart';
import 'package:flutter_financas/presentation/widgets/button.dart';
import 'package:flutter_financas/presentation/widgets/ranking.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Lista de jogadores com colocação, nome e pontuação (XP)
  final List<Map<String, dynamic>> jogadores = [
    {'colocacao': 1, 'nomeResumido': 'GUSTAVO CÉSAR', 'xp': 1250},
    {'colocacao': 2, 'nomeResumido': 'INDIGO ZIROLDO', 'xp': 1150},
    {'colocacao': 3, 'nomeResumido': 'GABRIEL MAZIERO', 'xp': 1100},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const CustomAppBar(),
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
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20, bottom: 5),
                                child: const Text(
                                  'TEMA DA SEMANA',
                                  style: TextStyle(
                                    color: ColorConstants.thirdColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  'SEGUROS E PROTEÇÃO FINANCEIRA',
                                  style: TextStyle(
                                    color: ColorConstants.thirdColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  softWrap: true, 
                                  overflow: TextOverflow.visible
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 20),
                          child: const Icon(
                            Icons.money_rounded,
                            color: ColorConstants.thirdColor,
                            size: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 10),
                        child: const Text(
                          'RANKING',
                          style: TextStyle(
                            color: ColorConstants.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                      )
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: jogadores.length,
                    itemBuilder: (context, index) {
                      return Ranking(
                        colocacao: jogadores[index]['colocacao'],
                        nomeResumido: jogadores[index]['nomeResumido'],
                        xp: jogadores[index]['xp'],
                      );
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: ShortButton(
                      onPressed: () {},
                      textButton: 'VISUALIZAR RANKING COMPLETO'
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
                          'ADMINISTRAÇÃO',
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
                            textButton: 'GERENCIAR CRONOGRAMA',
                            icon: Icons.schedule,
                            onPressed: () {
                              // Navegação através de rotas nomeadas
                              Navigator.pushNamed(context, Cronograma.routeName);
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
                            textButton: 'GERENCIAR TEMAS',
                            icon: Icons.bookmark_added,
                            onPressed: () {
                              // Navegação através de rotas nomeadas
                              Navigator.pushNamed(context, Tema.routeName);
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
