import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class Button extends StatelessWidget {

  final String textButton;
  final VoidCallback onPressed;

  const Button({super.key, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        elevation: 0,
        backgroundColor: ColorConstants.primaryColor,
      ),
      onPressed: onPressed,
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

class ShortButton extends StatelessWidget {

  final String textButton;
  final VoidCallback onPressed;

  final Color buttonColor;

  const ShortButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.buttonColor = ColorConstants.largeButtonColor
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        elevation: 0,
        backgroundColor: buttonColor,
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          textButton,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      )
    );
  }
}

class LargeButtonWithIcon extends StatelessWidget {

  final String textButton;
  final double fontSize;
  final VoidCallback onPressed;
  final IconData icon;

  const LargeButtonWithIcon({
    super.key,
    required this.textButton,
    required this.onPressed,
    required this.icon,
    this.fontSize = 17
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
        elevation: 0,
        backgroundColor: ColorConstants.largeButtonColor,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              textButton,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              softWrap: true, 
              overflow: TextOverflow.visible,
            ),
          ),
          Icon(
            icon,
            color: Colors.white,
            size: 50,
          ),
        ],
      ),
    );
  }
}

