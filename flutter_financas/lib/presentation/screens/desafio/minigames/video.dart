import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/screens/desafio/minigames/storytelling.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';
import 'package:flutter_financas/presentation/widgets/common/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video extends StatefulWidget {
  static const routeName = '/desafio/minigame/video';

  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'HzRK6wTSHHU',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: ColorConstants.primaryColor,
        progressColors: const ProgressBarColors(
          playedColor: ColorConstants.secondColor,
          handleColor: ColorConstants.secondColor,
        ),
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: const DesafioAppBar(title: 'Vídeo auxiliar'),
          body: Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 80), // Espaço extra para o botão
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: const Text(
                        'VEJA ESSE VÍDEO AUXILIAR PARA OS PRÓXIMOS DESAFIOS!',
                        style: TextStyle(
                          color: ColorConstants.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: player,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DESCRIÇÃO DO VÍDEO',
                            style: TextStyle(
                              color: ColorConstants.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Olá pessoal, tudo bem?! No vídeo a seguir, falaremos sobre educação financeira. Você aprenderá o que é, como usá-la para garantir um futuro promissor e organizar suas finanças. A educação financeira ajuda a ter uma vida melhor, reduzindo surpresas desagradáveis. Aprenda a administrar seu dinheiro, controlar despesas e receitas, e investir para uma vida mais estável, evitando dívidas. É essencial para aumentar o retorno financeiro e ser mais responsável. Confira o vídeo para saber mais.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: ColorConstants.primaryColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 400,
                    height: 50,
                    child: Button(
                      onPressed: () {
                        Navigator.pushNamed(context, Storytelling.routeName);
                      },
                      textButton: 'Avançar',
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
