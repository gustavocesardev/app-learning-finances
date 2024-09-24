import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class SimpleList extends StatelessWidget {

  final String title;
  final String subtitle;
  final double fontSize;

  const SimpleList({
    super.key,
    required this.title,
    required this.subtitle,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15, right: 5, bottom: 5, left: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 350,
                      child: Text(
                        title,
                        style: TextStyle(
                          color: ColorConstants.primaryColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: ColorConstants.secondColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CalendarioList extends StatelessWidget {
  
  final String semana;
  final String periodo;
  final String tema;
  final String quantidadeDesafios;

  final VoidCallback onPressed;

  const CalendarioList({
    super.key,
    required this.semana,
    required this.periodo,
    required this.tema,
    required this.quantidadeDesafios,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        elevation: 0,
        backgroundColor: ColorConstants.primaryColor,
      ),
      onPressed: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: SizedBox(
              width: 350,
              child: Text(
                "SEMANA $semana ($periodo)",
                style: const TextStyle(
                  color: ColorConstants.thirdColor,
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
                softWrap: true,
                overflow: TextOverflow.visible, // Garante que o texto seja visível e ajustável
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: SizedBox(
              width: 350,
              child: Text(
                tema,
                style: const TextStyle(
                  color: ColorConstants.thirdColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: SizedBox(
              width: 350,
              child: Text(
                "$quantidadeDesafios DESAFIOS",
                style: const TextStyle(
                  color: ColorConstants.thirdColor,
                  fontSize: 8,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ),
          )
        ],
      ),
    );
  }
}
