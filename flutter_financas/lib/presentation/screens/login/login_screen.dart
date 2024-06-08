// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.white,
        body: const Center(
          child: LoginContent(),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: ColorConstants.primaryColor,
          onPressed: () {
            // Ação ao pressionar o botão
          },
          child: const Icon(Icons.gamepad, color: Colors.white,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: ColorConstants.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: const Text(
                    'Faça um desafio sem precisar de cadastro!',
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
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: 'Informe seu email',
                    ),
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
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: 'Informe sua senha',
                    ),
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
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                padding: const EdgeInsets.only(left: 150, right: 150, top: 10, bottom: 10),
                elevation: 0,
                backgroundColor: ColorConstants.primaryColor,
              ),
              onPressed: () {},
              child: const Text(
                "Login",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}