import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

import 'package:flutter_financas/presentation/widgets/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/button.dart';
import 'package:flutter_financas/presentation/widgets/input.dart';

class DesafioIncluirScreen extends StatefulWidget {
  static const routeName = '/desafio/incluir';

  const DesafioIncluirScreen({super.key});

  @override
  State<DesafioIncluirScreen> createState() => _DesafioIncluirScreenState();
}

class _DesafioIncluirScreenState extends State<DesafioIncluirScreen> {

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
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: semanaSelected,
                          underline: Container(
                            height: 1,
                            color: ColorConstants.primaryColor, // Altere esta cor para a que você deseja
                          ),
                          icon: const Icon(
                            Icons.arrow_drop_down_outlined,
                            color: ColorConstants.primaryColor,
                          ),
                          iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(color: Color.fromRGBO(75, 145, 91, 1)),
                          onChanged: (String? newValue) {
                            setState(() {
                              semanaSelected = newValue!;
                            });
                          },
                          items: semanas.map<DropdownMenuItem<String>>((Map<String, dynamic> semana){
                            return DropdownMenuItem<String>(
                              value: semana['id'],
                              child: Row(
                                children: [
                                  Text('Semana ${semana['id']} - ${semana['periodo']}'),
                                ],
                              ),
                            );
                          }).toList(),
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
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: dificuldadeSelected,
                          underline: Container(
                            height: 1,
                            color: ColorConstants.primaryColor, // Altere esta cor para a que você deseja
                          ),
                          icon: const Icon(
                            Icons.arrow_drop_down_outlined,
                            color: ColorConstants.primaryColor,
                          ),
                          iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(color: Color.fromRGBO(75, 145, 91, 1)),
                          onChanged: (String? newValue) {
                            setState(() {
                              dificuldadeSelected = newValue!;
                            });
                          },
                          items: dificuldades.map<DropdownMenuItem<String>>((Map<String, dynamic> dificuldade){
                            return DropdownMenuItem<String>(
                              value: dificuldade['nivel'],
                              child: Row(
                                children: [
                                  Text(dificuldade['tipo']),
                                ],
                              ),
                            );
                          }).toList(),
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
                      onPressed: () {},
                      textButton: 'Prosseguir'
                    )
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}