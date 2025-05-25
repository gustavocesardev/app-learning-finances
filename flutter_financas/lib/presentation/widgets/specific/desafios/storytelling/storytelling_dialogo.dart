import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class StorytellingDialogo extends StatelessWidget {

  final String nomePersonagem;
  final String dialogoPersonagem;
  final String urlImagem;

  const StorytellingDialogo({
    super.key,
    required this.nomePersonagem,
    required this.dialogoPersonagem,
    required this.urlImagem
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(urlImagem),
              backgroundColor: Colors.transparent,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    nomePersonagem,
                    style: const TextStyle(
                      color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                 dialogoPersonagem,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}