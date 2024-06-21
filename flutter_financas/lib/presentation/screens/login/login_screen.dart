
import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

// Importando widgets
import 'package:flutter_financas/presentation/widgets/input.dart';
import 'package:flutter_financas/presentation/widgets/button.dart';

class LoginScreen extends StatelessWidget {

  static const routeName = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: const Center(
          child: SingleChildScrollView(
            child: LoginContent(),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: ColorConstants.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: const Text(
                    'Faça seu cadastro e inicie sua jornada pela educação financeira!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: SizedBox(
              width: 275, 
              height: 275,
              child: Image(
                image: AssetImage('assets/images/logo_second.png'),
                ),
              ),
            )
          ]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                child: const SizedBox(
                  width: 350,
                  child: Input(
                    placeholderText: 'Informe seu e-mail',
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                child: const SizedBox(
                  width: 350,
                  child: Input(
                    placeholderText: 'Informe sua senha',
                    passwordType: true,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              child: const SizedBox(
                  width: 350,
                  child: Button(textButton: 'Login')
                ),
            ),
          ],
        )
      ],
    );
  }
}