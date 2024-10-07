import 'package:flutter_financas/model/colunas_relacionadas.dart' as model;

class ColunasRelacionadasService {
  List<String> getItemsColunas() {
    return [
      'Juros simples',
      'Juros compostos',
      'Renda variável',
      'Renda fixa',
    ];
  }

  List<String> getTargetsColunas() {
    return [
      'Acréscimo calculado sobre o valor inicial',
      'Acréscimo calculado sobre atualização do capital',
      'O rendimento não é previsível',
      'O cálculo da remuneração é definida de forma antecipada',
    ];
  }

  Map<String, String> getRelacaoCompletas() {
    return {
      'Juros simples': 'Acréscimo calculado sobre o valor inicial',
      'Juros compostos': 'Acréscimo calculado sobre atualização do capital',
      'Renda variável': 'O rendimento não é previsível',
      'Renda fixa': 'O cálculo da remuneração é definida de forma antecipada',
    };
  }

  model.ColunasRelacionadas getColunasRelacionadas() {
    return model.ColunasRelacionadas(
      relacaoCorreta: getRelacaoCompletas(),
    );
  }
}
