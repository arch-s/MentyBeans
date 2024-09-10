import 'package:flutter/material.dart';
import 'package:menty_beans/extensions/datetime_extensions.dart';
import 'package:menty_beans/features/calendar/day_button.dart';

class _CalendarState extends State<Calendar> {
  DateTime? _selectedDate;
  final DateTime _visibleMonth = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final List<DateTime> datesInMonth = _visibleMonth.getDaysInMonth();

    void handleDayTap(DateTime selectedDate) => setState(() {
      _selectedDate = selectedDate;
    });

    return Scaffold(
        body: GridView.builder(
      itemCount: datesInMonth.length,
      itemBuilder: (context, index) => createDayButton(
          datesInMonth[index],
          _selectedDate == datesInMonth[index],
          () => handleDayTap(datesInMonth[index])
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: DateTime.daysPerWeek,
      ),
    ));
  }
}

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}
