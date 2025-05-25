class SemanaService {
  static List<DateTime> generateWeeks() {
    final now = DateTime.now();
    final firstDayOfMonth = DateTime(now.year, now.month, 1);

    List<DateTime> weeks = [];
    for (int i = 0; i < 5; i++) {
      final startOfWeek = firstDayOfMonth.add(Duration(days: i * 7));
      weeks.add(startOfWeek);
    }
    return weeks;
  }
}
