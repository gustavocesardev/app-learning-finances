import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class TextLink extends StatelessWidget {
  
  final String text;

  const TextLink({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: ColorConstants.primaryColor,
        decoration: TextDecoration.underline,
      ),
    );
  }
}

class TextTitle extends StatelessWidget {

  final String text;
  final Color color;

  const TextTitle({
    super.key,
    required this.text,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: color
      ),
      textAlign: TextAlign.center
    );
  }
}
