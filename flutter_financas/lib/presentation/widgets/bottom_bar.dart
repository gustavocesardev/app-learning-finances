import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: ColorConstants.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: const Text(
                'Inicie sua jornada pela educação financeira!',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.white
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}