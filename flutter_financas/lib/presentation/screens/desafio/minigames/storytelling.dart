import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/providers/storytelling.dart';
import 'package:flutter_financas/presentation/screens/desafio/quiz/quiz.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';
import 'package:flutter_financas/presentation/widgets/common/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/button.dart';
import 'package:provider/provider.dart';

class Storytelling extends StatefulWidget {
  static const routeName = '/desafio/minigame/storytelling';

  const Storytelling({super.key});

  @override
  State<Storytelling> createState() => _StorytellingState();
}

class _StorytellingState extends State<Storytelling> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Função executada quando a tela for carregada
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final storytellingProvider = Provider.of<StorytellingProvider>(context, listen: false);
      storytellingProvider.adicionarProximoDialogo();
      storytellingProvider.adicionarProximoDialogo();
    });
  }

  @override
  Widget build(BuildContext context) {
    StorytellingProvider storytellingProvider = Provider.of<StorytellingProvider>(context);

    return Scaffold(
      appBar: const DesafioAppBar(title: 'Storytelling'),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            padding: const EdgeInsets.only(bottom: 80), // Espaço para o botão
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: const Text(
                      'O que é educação financeira?',
                      style: TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  Column(
                    children: storytellingProvider.widgetsList,
                  ),
                  const SizedBox(height: 10), // Espaço para o final do conteúdo
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: SizedBox(
              width: double.infinity,
              child: Button(
                onPressed: () {

                  if (!storytellingProvider.isStorytellingFinished()) {

                    storytellingProvider.adicionarProximoDialogo();

                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _scrollController.animateTo(
                        _scrollController.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 500), 
                        curve: Curves.easeInOut,
                      );
                    });

                    return;
                  }

                  Navigator.pushNamed(context, Quiz.routeName);
                },
                textButton: storytellingProvider.isStorytellingFinished() ? 'Próximo' : 'Continuar',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
