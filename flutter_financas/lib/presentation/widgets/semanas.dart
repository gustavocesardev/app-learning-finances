import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class Semanas extends StatelessWidget {
  final String tema;
  final int semana;

  const Semanas({
    super.key,
    required this.tema,
    required this.semana,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25, right: 20, bottom: 5, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Text(
                        tema,
                        style: const TextStyle(
                          color: ColorConstants.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                    Text(
                      'SEMANA $semana',
                      style: const TextStyle(
                        color: ColorConstants.secondColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        )
      ],
    );
  }
}
