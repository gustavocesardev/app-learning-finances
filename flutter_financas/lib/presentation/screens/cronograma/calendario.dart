import 'package:flutter/material.dart';

import 'package:flutter_financas/presentation/themes/colors_constants.dart';

import 'package:flutter_financas/presentation/widgets/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/bottom_bar.dart';
import 'package:flutter_financas/presentation/widgets/button.dart';
import 'package:flutter_financas/presentation/widgets/list.dart';

class Calendario extends StatefulWidget {
  static const routeName = '/cronograma/calendario';

  const Calendario({super.key});

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {

  final List<Map<String, dynamic>> semanas = [
      {
        'semana': '15',
        'periodo': '31/03 - 06/04',
        'tema': 'INVESTIMENTOS E MERCADO FINANCEIRA',
        'quantidadeDesafios': '7'
      },
      {
        'semana': '16',
        'periodo': '07/04 - 13/04',
        'tema': 'PLANEJAMENTO DE APOSENTADORIA',
        'quantidadeDesafios': '6'
      },
      {
        'semana': '17',
        'periodo': '14/04 - 20/04',
        'tema': 'ORÇAMENTO PESSOAL',
        'quantidadeDesafios': '6'
      },
      {
        'semana': '18',
        'periodo': '21/04 - 27/04',
        'tema': 'IMPOSTOS E TRIBUTAÇÃO',
        'quantidadeDesafios': '15'
      },
      {
        'semana': '19',
        'periodo': '28/04 - 27/04',
        'tema': 'GESTÃO DE DÍVIDAS',
        'quantidadeDesafios': '9'
      },
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
                      'ABRIL 2024',
                      style: TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      softWrap: true, 
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: semanas.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        child: SizedBox(
                        width: 375,
                        height: 75,
                        child: CalendarioList(
                          onPressed: () {},
                          semana: semanas[index]['semana'],
                          periodo: semanas[index]['periodo'],
                          tema: semanas[index]['tema'],
                          quantidadeDesafios: semanas[index]['quantidadeDesafios'],
                          )
                        ),
                      );
                    },
                  ),
                  Row(
                    children: [
                      Container(
                        width: 175,
                        margin: const EdgeInsets.all(10.0),
                        child: ShortButton(
                          onPressed: () {},
                          textButton: 'MÊS ANTERIOR',
                          buttonColor: ColorConstants.primaryColor,
                        )
                      ),
                      Container(
                        width: 175,
                        margin: const EdgeInsets.all(10.0),
                        child: ShortButton(
                          onPressed: () {},
                          textButton: 'PRÓXIMO MÊS',
                          buttonColor: ColorConstants.primaryColor,
                        )
                      ),
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