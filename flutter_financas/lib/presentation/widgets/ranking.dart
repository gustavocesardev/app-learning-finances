import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class Ranking extends StatelessWidget {

  final int colocacao;
  final String nomeResumido;
  final int xp;

  const Ranking({
    super.key,
    required this.colocacao,
    required this.nomeResumido,
    required this.xp
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5, right: 20, bottom: 5, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$colocacao°',
                style: const TextStyle(
                  color: ColorConstants.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w900
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: const Icon(
                  Icons.account_circle_sharp,
                  color: ColorConstants.primaryColor,
                  size: 35
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: 210,
                  child: Text(
                    nomeResumido,
                    style: const TextStyle(
                      color: ColorConstants.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Text(
                '$xp XP',
                style: const TextStyle(
                  color: ColorConstants.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),
            ],
          )
        )
      ],
    );
  }
}