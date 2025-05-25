class ColunasRelacionadas {

  final Map<String, String> relacaoCorreta;

  ColunasRelacionadas({
    required this.relacaoCorreta,
  });
}

class Match {
  final String item;
  final String? target;
  bool isCorrect;

  Match({
    required this.item,
    required this.target,
    required this.isCorrect
  });
}

