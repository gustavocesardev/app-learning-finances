import 'package:flutter/material.dart';
import 'package:flutter_financas/model/colunas_relacionadas.dart' as model;
import 'package:flutter_financas/presentation/themes/colors_constants.dart';
import 'package:flutter_financas/presentation/widgets/common/button.dart';

class ColunasRelacionadas extends StatefulWidget {
  final List<String> items;
  final List<String> targets;

  final Map<String, String?> relacaoAtual;
  final model.ColunasRelacionadas colunasRelacionadas;

  // Navegação para a próxima tela
  final Function navigator;

  const ColunasRelacionadas({
    super.key,
    required this.items,
    required this.targets,
    required this.relacaoAtual,
    required this.colunasRelacionadas,
    required this.navigator,
  });

  @override
  State<ColunasRelacionadas> createState() => _ColunasRelacionadasState();
}

class _ColunasRelacionadasState extends State<ColunasRelacionadas> {
  final List<model.Match> matches = [];
  bool isValidated = false;

  void validateMatches() {
    setState(() {
      matches.clear(); // Reiniciando resultado do minigame
      
      widget.relacaoAtual.forEach((item, target) {
        // Verifica se a relação atual está correta
        bool isCorrect = widget.colunasRelacionadas.relacaoCorreta[item] == target;

        // Adiciona o resultado da validação para cada item
        matches.add(model.Match(
          item: item,
          target: target,
          isCorrect: isCorrect,
        ));
      });

      isValidated = true;
    });
  }

  void removeItem(String item) {
    setState(() {
      widget.relacaoAtual[item] = null;
    });
  }

  /// Obtém o item correspondente de um alvo específico.
  ///
  /// Esta função percorre as entradas da relacaoAtual, que contém 
  /// associações entre itens e alvos. Ela verifica se o valor de cada 
  /// entrada corresponde ao target fornecido. Se houver uma correspondência, 
  /// o item associado é retornado.
  ///
  /// Se não houver um item associado ao target, a função retorna null.
  ///
  /// Parâmetros:
  /// - [target]: Uma string representando o alvo a ser buscado.
  ///
  /// Retorna:
  /// - Uma string opcional (String?) que representa o item associado ao 
  /// target, ou null se não houver correspondência.
  String? getMatchedItem(String target) {
      return widget.relacaoAtual.entries
          .map((entry) => entry.value == target ? entry.key : null)
          .firstWhere((item) => item != null, orElse: () => null);
  }

  Color getDragTargetColor(String target, String? itemMatched) {
    
    // Percorendo a lista de matches para definir as cores das colunas
    // Caso matches não tenha sido definido ainda (ainda não houve verificação das respostas)
    // é retornado um objeto Match default
    model.Match? match = matches.firstWhere(
      // Retorna o objeto match encontrado
      (m) => (m.item == itemMatched && m.target == target),
      orElse: () => model.Match(item: "", target: "", isCorrect: false),
    );

    if (match.isCorrect) {
      return ColorConstants.largeButtonColor; // Cor de resposta correta

    } else if (match.target == target && !match.isCorrect) {
      return ColorConstants.wrongAnswer; // Cor de resposta errada

    } else if (itemMatched != null) { // Cor quando há elemento alocado e não houve verificação
      return ColorConstants.secondColor;

    }
    return ColorConstants.thirdColor; // Cor padrão
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
                    borderRadius: BorderRadius.circular(12),
                    child: widget.relacaoAtual[item] == null 
                     ? Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: ColorConstants.secondColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        item,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )
                    : Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        item,
                        style: const TextStyle(
                          color: Colors.transparent,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  childWhenDragging: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      item,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  child: widget.relacaoAtual[item] == null 
                    ? Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: ColorConstants.secondColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          item,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          item,
                          style: const TextStyle(
                            color: Colors.transparent,
                            fontSize: 18,
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
                        if (!isValidated) {
                          setState(() {
                            String receivedItem = details.data;
                            String? existingItem = getMatchedItem(target);

                            // Se já existe um item, remove-o antes de adicionar o novo
                            if (existingItem != null) {
                              removeItem(existingItem);
                            }

                            widget.relacaoAtual[receivedItem] = target; // Adiciona o novo item
                          });
                        }
                      },
                      onWillAcceptWithDetails: (data) => !isValidated,
                      builder: (context, acceptedItems, rejectedItems) {
                        String? itemMatched = getMatchedItem(target);
                        Color dragTargetColor = getDragTargetColor(target, itemMatched);

                        return GestureDetector(
                          onTap: () {
                            if (itemMatched != null && itemMatched.isNotEmpty) {
                              removeItem(itemMatched);
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: dragTargetColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            height: 50,
                            width: 200,
                            margin: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Center(
                              child: Text(
                                itemMatched ?? "",
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
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
                            fontSize: 14,
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
              onPressed:  () {
                if (!isValidated) {
                  validateMatches();
                } else {
                  widget.navigator();
                }
              },
              textButton: !isValidated ? 'Prosseguir' : 'Avançar',
            ),
          ),
        ],
      ),
    );
  }
}