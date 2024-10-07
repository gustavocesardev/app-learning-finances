import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/screens/desafio/minigames/video.dart';

import 'package:provider/provider.dart';
import 'package:flutter_financas/presentation/providers/colunas_relacionadas.dart' as provider;
import 'package:flutter_financas/presentation/widgets/specific/desafios/colunas_relacionadas/colunas_relacionadas.dart' as widget;

import 'package:flutter_financas/presentation/themes/colors_constants.dart';

import 'package:flutter_financas/presentation/widgets/common/app_bar.dart';

class ColunasRelacionadas extends StatefulWidget {
  static const routeName = '/desafio/minigame/coluna';

  const ColunasRelacionadas({super.key});

  @override
  State<ColunasRelacionadas> createState() => _ColunasRelacionadasState();
}

class _ColunasRelacionadasState extends State<ColunasRelacionadas> {

  @override
  Widget build(BuildContext context) {
    provider.ColunasRelacionadas colunasProvider = Provider.of<provider.ColunasRelacionadas>(context);

    return Scaffold(
      appBar: const DesafioAppBar(title: 'Relacionar colunas'),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                child: const Text(
                  'RELACIONE AS PALAVRAS!',
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
              widget.ColunasRelacionadas(
                items: colunasProvider.items,
                targets: colunasProvider.targets,
                relacaoAtual: colunasProvider.relacaoAtual,
                colunasRelacionadas: colunasProvider.colunasRelacionadas,
                navigator: () {
                  Navigator.pushNamed(context, Video.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
