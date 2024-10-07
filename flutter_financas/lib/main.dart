// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_financas/presentation/themes/colors_constants.dart';

// Definindo Providers do projeto
import 'package:flutter_financas/presentation/providers/quiz.dart' as quizProvider;
import 'package:flutter_financas/presentation/providers/tema_provider.dart' as temaProvider;
import 'package:flutter_financas/presentation/providers/semana.dart' as semanaProvider;
import 'package:flutter_financas/presentation/providers/colunas_relacionadas.dart' as colunasProvider;
import 'package:flutter_financas/presentation/providers/storytelling.dart' as storytellingProvider;

// Definindo Screens do projeto
import 'package:flutter_financas/presentation/screens/splash/splash.dart' as splashScreen;
import 'package:flutter_financas/presentation/screens/home/home.dart' as homeScreen;

import 'package:flutter_financas/presentation/screens/login/login.dart' as loginScreen;
import 'package:flutter_financas/presentation/screens/login/register.dart' as registerScreen;

import 'package:flutter_financas/presentation/screens/tema/tema.dart' as temaScreen;
import 'package:flutter_financas/presentation/screens/tema/listagem.dart' as temaListagemScreen;
import 'package:flutter_financas/presentation/screens/tema/inclusao.dart' as temaInclusaoScreen;

import 'package:flutter_financas/presentation/screens/cronograma/calendario.dart' as calendarioScreen;
import 'package:flutter_financas/presentation/screens/cronograma/cronograma.dart' as cronogramaScreen;

import 'package:flutter_financas/presentation/screens/semana/selecionar_semana.dart' as selecionarSemanaScreen;
import 'package:flutter_financas/presentation/screens/semana/selecionar_tema.dart' as selecionarTemaScreen;

import 'package:flutter_financas/presentation/screens/desafio/desafio.dart' as desafioScreen;

import 'package:flutter_financas/presentation/screens/desafio/minigames/storytelling.dart' as storytellingScreen;
import 'package:flutter_financas/presentation/screens/desafio/minigames/colunas_relacionadas.dart' as screenColunas;

import 'package:flutter_financas/presentation/screens/desafio/quiz/quiz.dart' as quizScreen;
import 'package:flutter_financas/presentation/screens/desafio/quiz/quiz_resultado.dart' as quizResultadoScreen;

import 'package:flutter_financas/presentation/screens/desafio/minigames/video.dart' as videoScreen;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => quizProvider.QuizProvider()),
        ChangeNotifierProvider(create: (_) => colunasProvider.ColunasRelacionadas()),
        ChangeNotifierProvider(create: (_) => storytellingProvider.StorytellingProvider()),
        ChangeNotifierProvider(create: (_) => semanaProvider.SemanaProvider()),
        ChangeNotifierProvider(create: (_) => temaProvider.TemaProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning finances',
      theme: ThemeData(
        primaryColor: ColorConstants.primaryColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const splashScreen.Splash(),

        // Login
        loginScreen.Login.routeName: (context) => const loginScreen.Login(),
        registerScreen.Register.routeName: (context) => const registerScreen.Register(),
        
        // Home
        homeScreen.Home.routeName: (context) => const homeScreen.Home(),

        // Temas
        temaScreen.Tema.routeName: (context) => const temaScreen.Tema(),
        temaListagemScreen.TemaListagem.routeName: (context) => const temaListagemScreen.TemaListagem(),
        temaInclusaoScreen.TemaInclusao.routeName: (context) => const temaInclusaoScreen.TemaInclusao(),
        
        // Cronogramas
        cronogramaScreen.Cronograma.routeName: (context) => const cronogramaScreen.Cronograma(),
        calendarioScreen.Calendario.routeName: (context) => const calendarioScreen.Calendario(),

        // Inclusão de desafios
        desafioScreen.Desafio.routeName: (context) => const desafioScreen.Desafio(),

        // Inclusao de semanas
        selecionarSemanaScreen.SelecionarSemanaScreen.routeName: (context) => const selecionarSemanaScreen.SelecionarSemanaScreen(),
        selecionarTemaScreen.SelecionarTemaScreen.routeName: (context) => const selecionarTemaScreen.SelecionarTemaScreen(),

        // Desafios (modelos)
        screenColunas.ColunasRelacionadas.routeName: (context) => const screenColunas.ColunasRelacionadas(),
        videoScreen.Video.routeName: (context) => const videoScreen.Video(),
        storytellingScreen.Storytelling.routeName: (context) => const storytellingScreen.Storytelling(),

        // Quiz
        quizScreen.Quiz.routeName: (context) => const quizScreen.Quiz(),
        quizResultadoScreen.QuizResultado.routeName: (context) => const quizResultadoScreen.QuizResultado(),
      },
    );
  }
}
