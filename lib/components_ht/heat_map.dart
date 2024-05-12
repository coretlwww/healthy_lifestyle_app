import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class HeatMap extends StatelessWidget {
  final Map<DateTime, int> datasets;
  final DateTime startDate;
  const HeatMap({
    super.key,
    required this.startDate,
    required this.datasets,
  });

  @override
  Widget build(BuildContext context) {
    return HeatMapCalendar(
        initDate: startDate,
        datasets: datasets,
        colorMode: ColorMode.color,
        defaultColor: Colors.white,
        textColor: Colors.black,
        showColorTip: false,
        size: 30,
        colorsets: {
          1: Colors.deepPurple.shade100,
          2: Colors.deepPurple.shade200,
          3: Colors.deepPurple.shade300,
          4: Colors.deepPurple.shade400,
          5: Colors.deepPurple.shade500,
          6: Colors.deepPurple.shade600,
          7: Colors.deepPurple.shade700,
          8: Colors.deepPurple.shade800,
          9: Colors.deepPurple.shade900,
        });
  }
}
