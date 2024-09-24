import 'package:flutter/material.dart';

import 'package:flutter_financas/model/quiz_question.dart';
import 'package:flutter_financas/services/quiz_service.dart';

/// Service que recupera, e estrutura, as perguntas do quiz do aplicativo
/// @see [QuizQuestion] 
/// @see [QuizService] 
class QuizProvider with ChangeNotifier {
  
  late List<QuizQuestion> quiz;

  String alternativaSelecionada = '';

  int numeroPerguntaAtual = 0;
  int acertos = 0;
  int erros = 0;

  QuizProvider() {
    /// Recuperando, através do QuizService, a lista de perguntas do quiz.
    quiz = QuizService().getQuizQuestions();
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
  }

  void selecionarAlternativa(String option) {
    alternativaSelecionada = option;
    /// Notificando os ouvintes da mudança de estado.
    notifyListeners();
  }
}
