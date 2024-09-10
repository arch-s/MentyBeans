extension DateTimeExtensions on DateTime {
  int getNumberOfDaysInMonth() {
    final firstDayInMonth = DateTime(year, month, 1);
    final firstDayNextMonth = DateTime(year, month + 1, 1);

    return firstDayNextMonth.difference(firstDayInMonth).inDays;
  }

  List<DateTime> getDaysInMonth() {
    final int daysInMonth = DateTime(year, month).getNumberOfDaysInMonth();

    return List<DateTime>.generate(daysInMonth, (day) => DateTime(year, month, day + 1));
  }
}
