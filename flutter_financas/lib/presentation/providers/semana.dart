import 'package:flutter/material.dart';
import 'package:flutter_financas/services/semana.dart';

class SemanaProvider with ChangeNotifier {
  DateTime? _selectedStartDate;
  DateTime? _selectedEndDate;

  DateTime? get selectedStartDate => _selectedStartDate;
  DateTime? get selectedEndDate => _selectedEndDate;

  final List<DateTime> _weeks = SemanaService.generateWeeks();

  List<DateTime> get weeks => _weeks;

  void selectWeek(DateTime startDate) {
    _selectedStartDate = startDate;
    _selectedEndDate = startDate.add(const Duration(days: 6));
    notifyListeners();
  }
}
