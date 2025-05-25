import 'package:flutter/material.dart';

import 'package:flutter_financas/model/quiz_pergunta.dart';
import 'package:flutter_financas/services/quiz.dart';

/// Service que recupera, e estrutura, as perguntas do quiz do aplicativo
/// @see [QuizPergunta] 
/// @see [QuizService] 
class QuizProvider with ChangeNotifier {
  
  late List<QuizPergunta> quiz;
  Arguments arguments = Arguments(0, 0, 0);

  String alternativaSelecionada = '';

  int numeroPerguntaAtual = 0;
  int acertos = 0;
  int erros = 0;

  QuizProvider() {
    /// Recuperando, através do QuizService, a lista de perguntas do quiz.
    quiz = QuizService().getQuizQuestions();
    arguments.totalPerguntas = quiz.length;
  }

  void responderPergunta() {
    /// Não permite o usuário prosseguir com o quiz sem assinalar uma alternativa.
    if (alternativaSelecionada.isEmpty) return;

    bool isCorrect = quiz[numeroPerguntaAtual].alternativaCorreta == alternativaSelecionada;

    /// Incrementando resultado da resposta do usuário (Correto ou incorreto).
    isCorrect ? acertos++ : erros++;

    if (numeroPerguntaAtual < quiz.length - 1) {
      /// Redirecionado para a próxima pergunta da lista.
      numeroPerguntaAtual++;
      alternativaSelecionada = '';
      /// Notificando os ouvintes da mudança de estado.
      notifyListeners();
    } 

    // Atualizando classe de argumentos
    arguments.totalAcertos = acertos;
    arguments.totalErros = erros;
  }

  void selecionarAlternativa(String option) {
    alternativaSelecionada = option;
    /// Notificando os ouvintes da mudança de estado.
    notifyListeners();
  }
}

class Arguments {
  int? totalAcertos;
  int? totalErros;
  int? totalPerguntas;

  Arguments(
    this.totalAcertos,
    this.totalErros,
    this.totalPerguntas
  );
}
