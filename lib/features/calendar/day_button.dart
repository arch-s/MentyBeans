import 'package:flutter/material.dart';

class DayDetails {
  final DateTime date;
  final List<String> activities;
  final bool? isBeanLossDay;

  DayDetails(this.date, this.activities, {this.isBeanLossDay});
}

class DayButton extends StatelessWidget {
  final DayDetails dayDetails;
  final bool isSelected;
  final VoidCallback handleIsSelected;

  DayButton({
    super.key,
    required this.dayDetails,
    required this.isSelected,
    required this.handleIsSelected
  });

  @override
  Widget build(BuildContext context) =>
      InkWell(
        onTap: handleIsSelected,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: isSelected ? selectedDayDecoration : const BoxDecoration(),
          width: 68,
          height: 112,
          margin: const EdgeInsets.all(2),
          child: Center(
            child: Text("${dayDetails.date.day}"),
          ),
        ),
      );

  BoxDecoration selectedDayDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(4), color: Colors.orangeAccent);
}

DayButton createDayButton(DateTime date, bool isSelected,
    VoidCallback handleIsSelected) =>
    DayButton(
      dayDetails: DayDetails(date, []),
      isSelected: isSelected,
      handleIsSelected: handleIsSelected,
    );