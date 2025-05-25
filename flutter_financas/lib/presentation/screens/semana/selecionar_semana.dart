// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/screens/semana/selecionar_tema.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';
import 'package:flutter_financas/presentation/widgets/common/app_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/bottom_bar.dart';
import 'package:flutter_financas/presentation/widgets/common/button.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class SelecionarSemanaScreen extends StatefulWidget {
  static const routeName = '/semana';

  const SelecionarSemanaScreen({super.key});

  @override
  _SelecionarSemanaScreenState createState() => _SelecionarSemanaScreenState();
}

class _SelecionarSemanaScreenState extends State<SelecionarSemanaScreen> {
  DateTime _selectedDay = DateTime.now();
  late DateTime _selectedWeekStart;
  late DateTime _selectedWeekEnd;

  @override
  void initState() {
    super.initState();
    _updateSelectedWeek(_selectedDay);
  }

  void _updateSelectedWeek(DateTime day) {
    _selectedWeekStart = day.subtract(Duration(days: day.weekday));
    _selectedWeekEnd = _selectedWeekStart.add(const Duration(days: 6));
  }

  List<DateTime> _getDaysInSelectedWeek() {
    return List.generate(7, (index) => _selectedWeekStart.add(Duration(days: index)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DesafioAppBar(title: 'Selecionar semana',),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TableCalendar(
              focusedDay: _selectedDay,
              firstDay: DateTime.now().subtract(const Duration(days: 365)),
              lastDay: DateTime.now().add(const Duration(days: 365)),
              calendarFormat: CalendarFormat.month,
              selectedDayPredicate: (day) {
                return _getDaysInSelectedWeek().contains(day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _updateSelectedWeek(selectedDay);
                });
              },
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              calendarBuilders: CalendarBuilders(
                selectedBuilder: (context, date, _) {
                  return Container(
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        date.day.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
                todayBuilder: (context, date, _) {
                  return Container(
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        date.day.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
                // Constrói o dia da semana da seleção
                defaultBuilder: (context, date, _) {
                  if (_getDaysInSelectedWeek().contains(date)) {
                    return Container(
                      margin: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Text(date.day.toString()),
                      ),
                    );
                  }

                  return null;
                },
              ),
            ),
            Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    'SEMANA SELECIONADA',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: ColorConstants.primaryColor
                    ),
                  ),
                ),
                Text(
                  '${DateFormat('dd/MM').format(_selectedWeekStart)} a ${DateFormat('dd/MM').format(_selectedWeekEnd)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.primaryColor
                  ),
                ),
              ],
            )
            ),
            Button(
              onPressed: () {
                Navigator.pushNamed(context, SelecionarTemaScreen.routeName);
              },
              textButton: 'Prosseguir',
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBarHome(),
    );
  }
}
