import 'package:flutter/material.dart';
import 'package:flutter_financas/model/colunas_relacionadas.dart' as model;
import 'package:flutter_financas/services/colunas_relacionadas.dart' as service;

class ColunasRelacionadas with ChangeNotifier {
  
  late List<String> items; 
  late List<String> targets;

  /// Relação atual, podendo ser modificado pelo usuário
  late Map<String, String?> relacaoAtual;

  /// Relação completa das colunas para referência nas verificações
  late model.ColunasRelacionadas colunasRelacionadas;

  ColunasRelacionadas() {
    colunasRelacionadas = service.ColunasRelacionadasService().getColunasRelacionadas();

    /// Recuperando items separadamente
    items = service.ColunasRelacionadasService().getItemsColunas();
    /// Recuperando os target separadamente
    targets = service.ColunasRelacionadasService().getTargetsColunas();
    
    /// Iniciando a relação atual com valores nulls
    relacaoAtual = iniciarRelacao();
  }

  Map<String, String?> iniciarRelacao() {
    /// Recuperando lista das relações completas (corretas)
    Map<String, String> relacaoCompletas = service.ColunasRelacionadasService().getRelacaoCompletas();
    
    // Cria um novo Map com os valores setados como null
    Map<String, String?> relacaoResetada = relacaoCompletas.map((key, value) => MapEntry(key, null));
    
    return relacaoResetada;
  }

  void atualizarRelacao(String item, String? target) {
    relacaoAtual[item] = target;
    notifyListeners();
  }
}
