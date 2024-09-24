import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/providers/quiz_provider.dart';

import 'package:flutter_financas/presentation/screens/splash/splash.dart';

import 'package:flutter_financas/presentation/screens/home/home.dart';

import 'package:flutter_financas/presentation/screens/login/login.dart';
import 'package:flutter_financas/presentation/screens/login/register.dart';

import 'package:flutter_financas/presentation/screens/cronograma/calendario.dart';
import 'package:flutter_financas/presentation/screens/cronograma/cronograma.dart';

import 'package:flutter_financas/presentation/screens/desafio/desafio.dart';
import 'package:flutter_financas/presentation/screens/desafio/quiz/quiz.dart';
import 'package:flutter_financas/presentation/screens/desafio/minigames/colunas_relacionadas.dart';
import 'package:flutter_financas/presentation/screens/desafio/minigames/video.dart';

import 'package:flutter_financas/presentation/screens/tema/tema.dart';
import 'package:flutter_financas/presentation/screens/tema/listagem.dart';
import 'package:flutter_financas/presentation/screens/tema/inclusao.dart';

import 'package:flutter_financas/presentation/themes/colors_constants.dart';
import 'package:provider/provider.dart';

void main() {
   runApp(
    ChangeNotifierProvider(
      create: (_) => QuizProvider(),
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
        '/': (context) => const Splash(),

        // Login
        Login.routeName: (context) => const Login(),
        Register.routeName: (context) => const Register(),
        
        // Home
        Home.routeName: (context) => const Home(),
        Tema.routeName: (context) => const Tema(),

        // Temas
        TemaListagem.routeName: (context) => const TemaListagem(),
        TemaInclusao.routeName: (context) => const TemaInclusao(),
        
        // Cronogramas
        Cronograma.routeName: (context) => const Cronograma(),
        Calendario.routeName: (context) => const Calendario(),

        // Inclusão de desafios
        Desafio.routeName: (context) => const Desafio(),

        // Desafios (modelos)
        ColunasRelacionadas.routeName: (context) => const ColunasRelacionadas(),
        DesafioVideo.routeName: (context) => const DesafioVideo(),

        // Quiz
        Quiz.routeName: (context) => const Quiz()
      },
    );
  }
}
