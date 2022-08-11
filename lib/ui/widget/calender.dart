import 'package:flutter/material.dart';
import 'package:koraplay/ui/shared/app_colors.dart';
import 'package:koraplay/ui/widget/app_text.dart';

class Calender extends StatelessWidget {
  final String day;
  final int date;
  final bool isActive;
  const Calender({
    Key? key,
    required this.day,
    required this.date,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 43,
        width: 43,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isActive ? primaryColor : secondaryColor.withOpacity(0.8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: day,
                color: isActive ? Colors.white : Colors.grey,
              ),
              AppText(
                text: date.toString(),
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.white : Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
