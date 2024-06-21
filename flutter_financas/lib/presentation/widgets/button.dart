import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class Button extends StatelessWidget {

  final String textButton;

  const Button({
    super.key,
    required this.textButton
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        elevation: 0,
        backgroundColor: ColorConstants.primaryColor,
      ),
      onPressed: () {},
      child: Center(
        child: Text(
          textButton,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ) 
    );
  }
}