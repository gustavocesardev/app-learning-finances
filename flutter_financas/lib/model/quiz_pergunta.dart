/// Classe que representa uma pergunta do Quiz do 
/// @see [QuizService] Utiliza o model para definir a estrutura das perguntas recuperadas via service.
class QuizPergunta {

  /// Descrição/Enunciado da pergunta
  final String pergunta;
  /// Lista de alternativas da pergunta. Uma lista de objetos chave e valor.
  /// As chaves são caracteres alfabéticos usados, também como referencia para validar resposta.
  /// @example
  /// [{'A': 'Resposta 1'}, {'B': 'Resposta 2'}, {'C': 'Resposta 3'}]
  final List<Map<String, String>> alternativas;
  /// Chave da alternativa correta
  final String alternativaCorreta;

  QuizPergunta({
    required this.pergunta,
    required this.alternativas,
    required this.alternativaCorreta,
  });
}