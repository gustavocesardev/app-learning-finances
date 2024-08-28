import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';
import 'package:flutter_financas/presentation/widgets/button.dart';

class RelacionarColunas extends StatefulWidget {

  static const routeName = '/desafio/modelo/colunas';
  
  final List<String> items;
  final List<String> targets;
  final Map<String, String?> relacaoAtual;
  final Map<String, String> relacaoCorreta;

  const RelacionarColunas({
    super.key,
    required this.items,
    required this.targets,
    required this.relacaoAtual,
    required this.relacaoCorreta,
  });

  @override
  State<RelacionarColunas> createState() => _RelacionarColunasState();
}

class _RelacionarColunasState extends State<RelacionarColunas> {
  final List<Match> matches = [];

  void validateMatches() {
    setState(() {
      matches.clear();
      widget.relacaoAtual.forEach((item, target) {
        bool isCorrect = widget.relacaoCorreta[item] == target;
        matches.add(Match(item: item, target: target, isCorrect: isCorrect));
      });
    });
  }

  void removeItem(String item) {
    setState(() {
      widget.relacaoAtual[item] = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12.5, bottom: 12.5),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: widget.items.map((item) {
                return Draggable<String>(
                  data: item,
                  feedback: Material(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: ColorConstants.secondColor,
                      child: Text(
                        item,
                        style: const TextStyle(
                          color: Colors.white, 
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),
                  childWhenDragging: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.grey,
                    child: Text(item,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: widget.relacaoAtual[item] == null
                        ? ColorConstants.secondColor
                        : Colors.grey,
                    child: Text(
                      item,
                      style: const TextStyle(
                        color: Colors.white, 
                        fontSize: 18
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Column(
            children: widget.targets.map((target) {
              return Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    DragTarget<String>(
                      onAcceptWithDetails: (details) {
                        setState(() {
                          String receivedItem = details.data;
                          widget.relacaoAtual[receivedItem] = target;
                        });
                      },
                      builder: (context, acceptedItems, rejectedItems) {
                        String? itemMatched = widget.relacaoAtual.entries
                          .firstWhere(
                            (entry) => entry.value == target,
                            orElse: () => const MapEntry("", null)
                          ).key;
                        Match? match = matches.firstWhere(
                          (m) => m.item == itemMatched && m.target == target,
                          orElse: () => Match(
                            item: "",
                            target: "",
                            isCorrect: false
                          )
                        );
                        return GestureDetector(
                          onTap: () {
                            if (itemMatched.isNotEmpty) {
                              removeItem(itemMatched);
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            color: match.isCorrect
                                ? ColorConstants.largeButtonColor
                                : match.target == target && !match.isCorrect
                                    ? ColorConstants.wrongAnswer
                                    : ColorConstants.thirdColor,
                            height: 50,
                            width: 200,
                            margin: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Center(
                              child: itemMatched.isNotEmpty
                                ? Text(
                                    itemMatched,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: match.isCorrect
                                        ? ColorConstants.thirdColor
                                        : match.target == target && !match.isCorrect
                                            ? Colors.black
                                            : ColorConstants.primaryColor,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                : null,
                            ),
                          ),
                        );
                      },
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Text(
                          target,
                          style: const TextStyle(
                            color: ColorConstants.primaryColor,
                            fontSize: 14
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            child: Button(
              onPressed: validateMatches,
              textButton: 'Prosseguir',
            ),
          )
        ],
      ),
    );
  }
}

class Match {
  final String item;
  final String? target;
  bool isCorrect;

  Match({required this.item, required this.target, required this.isCorrect});
}
