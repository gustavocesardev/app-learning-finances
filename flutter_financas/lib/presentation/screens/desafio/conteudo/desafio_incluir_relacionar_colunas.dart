import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/widgets/bottom_bar.dart';

class IncluirDesafioColunas extends StatefulWidget {
  static const routeName = '/desafio/incluir/conteudo/colunas';

  const IncluirDesafioColunas({super.key});

  @override
  State<IncluirDesafioColunas> createState() => _IncluirDesafioColunasState();
}

class _IncluirDesafioColunasState extends State<IncluirDesafioColunas> {
  final TextEditingController _desafioNomeController = TextEditingController();
  final TextEditingController _desafioDescricaoController = TextEditingController();

  late List<TextEditingController> _colunasEsquerda = [];
  late List<TextEditingController> _colunasDireita = [];

  void _initControllers(int length) {
    _colunasEsquerda = List<TextEditingController>.generate(length, (_) => TextEditingController());
    _colunasDireita = List<TextEditingController>.generate(length, (_) => TextEditingController());
  }

  @override
  void initState() {
    super.initState();
    _initControllers(4);
  }

  @override
  void dispose() {
    _desafioNomeController.dispose();
    _desafioDescricaoController.dispose();
    _colunasEsquerda.forEach((controller) => controller.dispose());
    _colunasDireita.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: _colunasEsquerda.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,  // Centraliza o Row
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _colunasEsquerda[index],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          controller: _colunasDireita[index],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavigationBarHome(),
    );
  }
}
