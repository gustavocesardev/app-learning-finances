import 'package:flutter/material.dart';

import 'package:flutter_financas/presentation/screens/login/login_screen.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Finances',
      home: Scaffold(
        backgroundColor: ColorConstants.primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      // Navegação através de rotas nomeadas
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                    child: const SizedBox(
                      width: 275,
                      height: 275,
                      child: Image(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
