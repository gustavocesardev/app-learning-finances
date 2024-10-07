import 'package:flutter/material.dart';
import 'package:flutter_financas/services/storytelling.dart' as service;
import 'package:flutter_financas/model/storytelling_dialogo.dart' as model;
import 'package:flutter_financas/presentation/widgets/specific/desafios/storytelling/storytelling_dialogo.dart' as widget;

class StorytellingProvider with ChangeNotifier {
  /// Lista de widgets que serão exibidos na tela
  List<Widget> widgetsList = [];
  List<model.StorytellingDialogo> dialogos = [];

  int indiceDialogo = 0;

  StorytellingProvider() {
    dialogos = service.StorytellingService().getDialogos();
  }

  /// Função para adicionar um novo widget
  void adicionarProximoDialogo() {
    // Adicionando um novo widget à lista

    if (indiceDialogo == dialogos.length) return;

    widgetsList.add(
      widget.StorytellingDialogo(
        nomePersonagem: dialogos[indiceDialogo].nomePersonagem,
        dialogoPersonagem: dialogos[indiceDialogo].dialogoPersonagem,
        urlImagem: dialogos[indiceDialogo].urlFotoPersonagem,
      ),
    );

    // Incrementando o índice do diálogo
    indiceDialogo++;

    // Notificando os ouvintes da mudança de estado
    notifyListeners();
  }

  bool isStorytellingFinished() {

    return indiceDialogo == dialogos.length;
  }
}
