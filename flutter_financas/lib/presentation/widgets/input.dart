import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class Input extends StatelessWidget {

  final String placeholderText;
  final bool passwordType;

  const Input({
    super.key,
    required this.placeholderText,
    this.passwordType = false
  });

  @override
  Widget build(BuildContext context) {

    return TextField(
      obscureText: passwordType,
      decoration: InputDecoration(
        hintText: placeholderText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.primaryColor,
            width: 1.5, 
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}