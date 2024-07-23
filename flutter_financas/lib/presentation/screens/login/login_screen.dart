import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/screens/home/home_screen.dart';
import 'package:flutter_financas/presentation/screens/login/register_screen.dart';

// Importando widgets
import 'package:flutter_financas/presentation/widgets/input.dart';
import 'package:flutter_financas/presentation/widgets/button.dart';
import 'package:flutter_financas/presentation/widgets/text.dart';
import 'package:flutter_financas/presentation/widgets/bottom_bar.dart';

class LoginScreen extends StatelessWidget {

  static const routeName = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
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
                    ]),
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
                      child: SizedBox(
                        width: 350,
                        child: Button(
                          onPressed: () {
                            // Navegação através de rotas nomeadas
                            Navigator.pushNamed(context, HomeScreen.routeName);
                          },
                        textButton: 'Login',
                        )
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          // Navegação através de rotas nomeadas
                          Navigator.pushNamed(context, RegisterScreen.routeName);
                        },
                        child: const Center(
                          child: TextLink(text: 'Cadastre-se agora'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
