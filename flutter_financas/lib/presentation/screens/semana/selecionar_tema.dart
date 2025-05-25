import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';
import 'package:flutter_financas/presentation/widgets/common/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/bottom_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/button.dart';
import 'package:provider/provider.dart';
//import 'package:intl/intl.dart';

import 'package:flutter_financas/presentation/providers/tema_provider.dart';

class SelecionarTemaScreen extends StatelessWidget {
  static const routeName = '/semana/tema';

  const SelecionarTemaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<TemaProvider>(context);
    //final semanaProvider = Provider.of<SemanaProvider>(context);

    return Scaffold(
      appBar: const DesafioAppBar(title: 'Selecionar o tema da semana',),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
              'SELECIONE O TEMA DA SEMANA',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ColorConstants.primaryColor
              ),
            ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: temaProvider.temas.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => temaProvider.selectTema(temaProvider.temas[index]),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: temaProvider.selectedTema == temaProvider.temas[index]
                            ? ColorConstants.secondColor
                            : ColorConstants.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        temaProvider.temas[index],
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Button(
                onPressed: () {
                    if (temaProvider.selectedTema != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Semana criada com sucesso!'),
                        ),
                      );
                    }      
                }, 
                textButton: 'Finalizar',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBarHome(),
    );
  }
}
