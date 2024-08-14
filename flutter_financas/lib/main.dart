import 'package:flutter/material.dart';

import 'package:flutter_financas/presentation/screens/cronograma/calendario_screen.dart';
import 'package:flutter_financas/presentation/screens/cronograma/cronograma_screen.dart';
import 'package:flutter_financas/presentation/screens/desafio/desafio_incluir_screen.dart';

import 'package:flutter_financas/presentation/screens/home/home_screen.dart';
import 'package:flutter_financas/presentation/screens/splash/splash_screen.dart';

import 'package:flutter_financas/presentation/screens/login/login_screen.dart';
import 'package:flutter_financas/presentation/screens/login/register_screen.dart';

import 'package:flutter_financas/presentation/screens/tema/tema_incluir_screen.dart';
import 'package:flutter_financas/presentation/screens/tema/tema_listar_screen.dart';
import 'package:flutter_financas/presentation/screens/tema/tema_screen.dart';

import 'package:flutter_financas/presentation/themes/colors_constants.dart';

void main() {
  runApp(const MyApp());
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
        '/': (context) => const SplashScreen(),

        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
        
        HomeScreen.routeName: (context) => const HomeScreen(),
        TemaScreen.routeName: (context) => const TemaScreen(),

        TemaListagemScreen.routeName: (context) => const TemaListagemScreen(),
        TemaInclusaoScreen.routeName: (context) => const TemaInclusaoScreen(),
        
        CronogramaScreen.routeName: (context) => const CronogramaScreen(),
        CalendarioScreen.routeName: (context) => const CalendarioScreen(),

        DesafioIncluirScreen.routeName: (context) => const DesafioIncluirScreen()
      },
    );
  }
}
