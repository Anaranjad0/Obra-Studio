import 'package:flutter/material.dart';

class GanttChartWidget extends StatelessWidget {
  const GanttChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/diagrama/gantt.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
