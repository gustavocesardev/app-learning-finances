import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

import 'package:flutter_financas/presentation/widgets/common/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/bottom_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/button.dart';
import 'package:flutter_financas/presentation/widgets/common/input.dart';

class Desafio extends StatefulWidget {
  static const routeName = '/desafio/incluir';

  const Desafio({super.key});

  @override
  State<Desafio> createState() => _DesafioState();
}

class _DesafioState extends State<Desafio> {
  
  // Lista de dificuldades
  final List<Map<String, dynamic>> dificuldades = [
    {"tipo": "Fácil", "nivel": "1"},
    {"tipo": "Intermediário", "nivel": "2"},
    {"tipo": "Difícil", "nivel": "3"}
  ];

  // Lista de semanas
  final List<Map<String, dynamic>> semanas = [
    {
      'id': '15',
      'periodo': '31/03 - 06/04',
      'tema': 'INVESTIMENTOS E MERCADO FINANCEIRA',
    },
    {
      'id': '16',
      'periodo': '07/04 - 13/04',
      'tema': 'PLANEJAMENTO DE APOSENTADORIA',
    },
    {
      'id': '17',
      'periodo': '14/04 - 20/04',
      'tema': 'ORÇAMENTO PESSOAL',
    },
  ];

  late String semanaSelected;
  late String dificuldadeSelected;

  @override
  void initState() {
    super.initState();

    semanaSelected = semanas[0]['id'];
    dificuldadeSelected = dificuldades[0]['nivel'];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const CustomAppBar(title: 'Adicionar Desafio'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: const Text(
                        'PREENCHA AS INFORMAÇÕES DO DESAFIO',
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
                    const SizedBox(
                      width: 350,
                      child: Text(
                        'Nome',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstants.primaryColor,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        child: const SizedBox(
                          width: 350,
                          child: Input(
                            placeholderText: 'Informe o nome do desafio',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 350,
                      child: Text(
                        'Descrição',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstants.primaryColor,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        child: const SizedBox(
                          width: 350,
                          child: Input(
                            placeholderText: 'Informe a descrição',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 350,
                      child: Text(
                        'Pontuação máxima',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstants.primaryColor,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        child: const SizedBox(
                          width: 350,
                          child: Input(
                            placeholderText: 'Informe a pontuação máxima',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 350,
                      child: Text(
                        'Semana do desafio',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstants.primaryColor,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 350,
                          child: CustomDropdownInput(
                            value: semanaSelected,
                            items: semanas.map((semana) {
                              return {
                                'id': semana['id'],
                                'name': semana['periodo']
                              };
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                semanaSelected = newValue!;
                              });
                            },
                            hintText: 'Selecione a semana',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 350,
                      child: Text(
                        'Dificuldade',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstants.primaryColor,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 350,
                          child: CustomDropdownInput(
                            value: dificuldadeSelected,
                            items: dificuldades.map((dificuldade) {
                              return {
                                'id': dificuldade['nivel'],
                                'name': dificuldade['tipo']
                              };
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dificuldadeSelected = newValue!;
                              });
                            },
                            hintText: 'Selecione a dificuldade',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 350,
                      child: Button(
                        onPressed: () {
                          
                        },
                        textButton: 'Adicionar conteúdos'
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomNavigationBarHome(),
      ),
    );
  }
}
