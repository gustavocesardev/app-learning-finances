import 'package:flutter/material.dart';

import 'package:flutter_financas/presentation/screens/login/login.dart';

import 'package:flutter_financas/presentation/themes/colors_constants.dart';

import 'package:flutter_financas/presentation/widgets/bottom_bar.dart';
import 'package:flutter_financas/presentation/widgets/input.dart';
import 'package:flutter_financas/presentation/widgets/button.dart';
import 'package:flutter_financas/presentation/widgets/text.dart';

class Register extends StatelessWidget {
  
  static const routeName = '/register';

  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(30.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextTitle(text: 'CRIE SUA CONTA', color: ColorConstants.primaryColor),
                      TextTitle(text: 'AGORA!', color: ColorConstants.secondColor)
                    ],
                  ),
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
                            placeholderText: 'Informe o e-mail',
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
                            placeholderText: 'Informe o username',
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
                            placeholderText: 'Informe a senha',
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
                          onPressed: () {},
                          textButton: 'Cadastrar',
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
                          Navigator.pushNamed(
                            context, Login.routeName
                          );
                        },
                        child: const Center(
                          child: TextLink(
                            text: 'Já possuí conta? Faça seu login agora!',
                          ),
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
