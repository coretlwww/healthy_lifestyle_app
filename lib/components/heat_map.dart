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
          1: Colors.green.shade100,
          2: Colors.green.shade200,
          3: Colors.green.shade300,
          4: Colors.green.shade400,
          5: Colors.green.shade500,
          6: Colors.green.shade600,
        });
  }
}
