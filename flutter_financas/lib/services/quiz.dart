import 'package:flutter_financas/model/quiz_pergunta.dart';

/// Service que recupera, e estrutura, as perguntas do quiz do aplicativo
/// @see [QuizPergunta] Model da estrutura de dados das perguntas do quiz
/// @see [QuizProvider] Provider que utuiliza o Service para definir os estados do quiz
class QuizService {
  
  List<QuizPergunta> getQuizQuestions() {
  return [
    QuizPergunta(
      pergunta: 'Qual impacto tem a educação financeira no seu futuro?',
      alternativas: [
        {'A': 'Gera incertezas'},
        {'B': 'Garantir um futuro mais próspero'},
        {'C': 'Impede o progresso financeiro'},
        {'D': 'Cria mais despesas'},
        {'E': 'Não tem impacto'}
      ],
      alternativaCorreta: 'B',
    ),
    QuizPergunta(
      pergunta: 'Qual os principais benefícios de revisar seu planejamento financeiro regularmente?',
      alternativas: [
        {'A': 'Ignorar mudanças financeiras'},
        {'B': 'Adaptar-se a novas circunstâncias e objetivos'},
        {'C': 'Manter o mesmo plano por anos'},
        {'D': 'Aumentar o estresse financeiro'},
        {'E': 'Perder o controle sobre as finanças'}
      ],
      alternativaCorreta: 'B',
    ),
    QuizPergunta(
      pergunta: 'O que é Educação Financeira?',
      alternativas: [
        {'A': 'É a forma de gastar seu dinheiro sem poupar o mínimo'},
        {'B': 'É um processo que atrapalha o seu crescimento econômico e sua relação com o dinheiro'},
        {'C': 'É um processo em que um individuo busca obter conhecimento para lidar com o dinheiro da forma mais consciente e inteligente'},
        {'D': 'É um processo onde a pessoa não se importa com o dinheiro'},
        {'E': 'É um processo que não tem impacto na vida'}
      ],
      alternativaCorreta: 'C',
    ),
    QuizPergunta(
      pergunta: 'Por que é importante ter uma reserva de emergência?',
      alternativas: [
        {'A': 'Para fazer uma viagem de férias'},
        {'B': 'Para gastar com luxos'},
        {'C': 'Para suprir uma eventual despesa inesperada, como despesa médica.'},
        {'D': 'Para fazer um aniversário surpresa para um parente'},
        {'E': 'Para trocar de carro no fim do ano'}
      ],
      alternativaCorreta: 'C',
    ),
    QuizPergunta(
      pergunta: 'Qual o objetivo do controle de gastos?',
      alternativas: [
        {'A': 'Aumentar as despesas pessoais'},
        {'B': 'Ignorar completamente o orçamento pessoal'},
        {'C': 'Para poder ver aonde pode ser gasto mais dinheiro'},
        {'D': 'Para manter um registro preciso para aonde está indo o dinheiro'},
        {'E': 'Apenas por curiosidade'}
      ],
      alternativaCorreta: 'D',
    ),
    QuizPergunta(
      pergunta: 'Qual é o objetivo principal de investir dinheiro?',
      alternativas: [
        {'A': 'Manter um dinheiro parado'},
        {'B': 'Proteger o dinheiro debaixo do colchão'},
        {'C': 'Evitar a valorização do seu dinheiro'},
        {'D': 'Proteger seu dinheiro da inflação e fazer ele crescer com o tempo'},
        {'E': 'Nenhuma das opções'}
      ],
      alternativaCorreta: 'D',
    ),
    QuizPergunta(
      pergunta: 'O que é orçamento pessoal?',
      alternativas: [
        {'A': 'É um plano que estabelece metas financeiras e aloca recursos para poder atingi-las'},
        {'B': 'É uma lista de compras do mês'},
        {'C': 'Um registro das despesas'},
        {'D': 'Um levantamento de preços em supermercados'},
        {'E': 'Uma ferramenta para saber como economizar'}
      ],
      alternativaCorreta: 'A',
    ),
    QuizPergunta(
      pergunta: 'Por que é importante diferenciar “vontade” e “necessidade” ao fazer uma compra?',
      alternativas: [
        {'A': 'Para poder gastar sem restrição nenhuma'},
        {'B': 'Vontade e necessidade são a mesma coisa'},
        {'C': 'Para poder determinar o que é essencial e o que é supérfluo e pode aguardar'},
        {'D': 'Para poder aumentar os gastos com as vontades'},
        {'E': 'Não tem importância'}
      ],
      alternativaCorreta: 'C',
    ),
    QuizPergunta(
      pergunta: 'Qual a importância de estabelecer um limite de despesas?',
      alternativas: [
        {'A': 'Facilitar o controle financeiro'},
        {'B': 'Não existe razões para o mesmo'},
        {'C': 'Limites são apenas para entidades corporativas'},
        {'D': 'Para poder gastar todo o dinheiro do mês e não sobrar nada'},
        {'E': 'Para não controlar seu dinheiro'}
      ],
      alternativaCorreta: 'A',
    ),
    QuizPergunta(
      pergunta: 'Como evitar gastos supérfluos?',
      alternativas: [
        {'A': 'Analisando e refletindo sempre antes de comprar se aquele item ou serviço é necessário'},
        {'B': 'Ignorando o limite de despesas'},
        {'C': 'Comprando sem planejar'},
        {'D': 'Comprando por conta de um influenciador digital'},
        {'E': 'Para se sentir aceito por um grupo de pessoas'}
      ],
      alternativaCorreta: 'A',
    ),
  ];
}
}
