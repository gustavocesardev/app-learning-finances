import 'package:flutter_financas/model/quiz_pergunta.dart';

/// Service que recupera, e estrutura, as perguntas do quiz do aplicativo
/// @see [QuizPergunta] Model da estrutura de dados das perguntas do quiz
/// @see [QuizProvider] Provider que utuiliza o Service para definir os estados do quiz
class QuizService {
  
  List<QuizPergunta> getQuizQuestions() {
    return [
      QuizPergunta(
        pergunta: 'Qual o nome do rendimento que possuí as regras de rendimento bem definidas antes da aplicação do capital?',
        alternativas: [
          {'A': 'Renda variável'},
          {'B': 'Renda fixa'},
          {'C': 'Tesouro direto'},
          {'D': 'CDB'},
        ],
        alternativaCorreta: 'B',
      ),
      QuizPergunta(
        pergunta: 'Qual dos investimentos abaixo é um exemplo de renda variável?',
        alternativas: [
          {'A': 'Ações'},
          {'B': 'Tesouro direto'},
          {'C': 'CDB'},
          {'D': 'Poupança'},
        ],
        alternativaCorreta: 'A',
      ),
      QuizPergunta(
        pergunta: 'Qual tipo de investimento é considerado o mais seguro?',
        alternativas: [
          {'A': 'Ações'},
          {'B': 'Poupança'},
          {'C': 'Tesouro direto'},
          {'D': 'Fundo imobiliário'},
        ],
        alternativaCorreta: 'C',
      ),
      QuizPergunta(
        pergunta: 'O que significa a sigla CDI no mercado financeiro?',
        alternativas: [
          {'A': 'Certificado de Depósito de Investimento'},
          {'B': 'Certificado de Depósito Interbancário'},
          {'C': 'Cota de Desenvolvimento Interno'},
          {'D': 'Cálculo de Dividendo Inverso'},
        ],
        alternativaCorreta: 'B',
      ),
      QuizPergunta(
        pergunta: 'Qual investimento possui maior liquidez?',
        alternativas: [
          {'A': 'Ações'},
          {'B': 'Fundo de investimento'},
          {'C': 'Poupança'},
          {'D': 'Imóvel'},
        ],
        alternativaCorreta: 'C',
      ),
      QuizPergunta(
        pergunta: 'Qual é o principal objetivo de um fundo de investimento?',
        alternativas: [
          {'A': 'Diversificar riscos'},
          {'B': 'Comprar imóveis'},
          {'C': 'Guardar dinheiro para aposentadoria'},
          {'D': 'Adquirir ações específicas'},
        ],
        alternativaCorreta: 'A',
      ),
      QuizPergunta(
        pergunta: 'Qual é o órgão responsável por regulamentar o mercado de capitais no Brasil?',
        alternativas: [
          {'A': 'BACEN'},
          {'B': 'B3'},
          {'C': 'CVM'},
          {'D': 'FEBRABAN'},
        ],
        alternativaCorreta: 'C',
      ),
      QuizPergunta(
        pergunta: 'Qual é a característica principal de um CDB?',
        alternativas: [
          {'A': 'Baixa liquidez'},
          {'B': 'Garantia do FGC até certo valor'},
          {'C': 'Renda variável'},
          {'D': 'Sem prazo definido'},
        ],
        alternativaCorreta: 'B',
      ),
      QuizPergunta(
        pergunta: 'Qual dos investimentos abaixo é isento de Imposto de Renda para pessoa física?',
        alternativas: [
          {'A': 'LCI'},
          {'B': 'Ações'},
          {'C': 'Fundo de ações'},
          {'D': 'CDB'},
        ],
        alternativaCorreta: 'A',
      ),
      QuizPergunta(
        pergunta: 'O que significa a sigla IPCA, usada no mercado de investimentos?',
        alternativas: [
          {'A': 'Índice de Preço ao Consumidor Amplo'},
          {'B': 'Índice de Participação do Capital Anual'},
          {'C': 'Índice de Projeção de Custos Aplicados'},
          {'D': 'Indicador de Produto Corrente Anual'},
        ],
        alternativaCorreta: 'A',
      ),
    ];
  }
}
