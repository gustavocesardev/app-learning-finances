import 'package:flutter/material.dart';

import 'package:flutter_financas/presentation/screens/desafio/quiz/quiz.dart';

import 'package:flutter_financas/presentation/themes/colors_constants.dart';
import 'package:flutter_financas/presentation/widgets/app_bar.dart';

import 'package:flutter_financas/presentation/widgets/button.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DesafioVideo extends StatefulWidget {
  static const routeName = '/desafio/minigame/video';

  const DesafioVideo({super.key});

  @override
  State<DesafioVideo> createState() => _DesafioVideoState();
}

class _DesafioVideoState extends State<DesafioVideo> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'SRXH9AbT280',
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
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
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
                  Center(
                    child: Column(
                      children: [
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
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempor sem in hendrerit blandit. Sed quis pulvinar sapien. Sed efficitur elit lacus, a pellentesque turpis molestie eget. Nullam at aliquam nulla. Sed dictum suscipit neque, eu consectetur elit ullamcorper quis. Suspendisse vitae egestas dui, ac vulputate ligula. Cras erat orci, euismod id sapien ac, ullamcorper egestas dolor. Curabitur condimentum ornare tempus. Aenean vulputate auctor libero non tincidunt. Donec vulputate facilisis ullamcorper.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: ColorConstants.primaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              width: 400,
                              child: Button(
                                onPressed: () {
                                  Navigator.pushNamed(context, Quiz.routeName);
                                },
                                textButton: 'Avançar',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
