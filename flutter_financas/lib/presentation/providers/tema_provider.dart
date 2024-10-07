import 'package:flutter/material.dart';
import 'package:flutter_financas/services/tema.dart';

class TemaProvider with ChangeNotifier {
  String? _selectedTema;

  String? get selectedTema => _selectedTema;

  List<String> get temas => TemaService.getTemas();

  void selectTema(String tema) {
    _selectedTema = tema;
    notifyListeners();
  }
}
