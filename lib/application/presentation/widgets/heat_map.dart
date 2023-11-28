import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart' as heat;
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class HeatMap extends StatefulWidget {
  const HeatMap({super.key});

  @override
  State<HeatMap> createState() => _HeatMapState();
}

class _HeatMapState extends State<HeatMap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(204, 204, 204, 1),
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(12),
      child: heat.HeatMap(
        colorTipCount: 2,
        showColorTip: false,
        size: 16,
        datasets: {
          DateTime(2023, 2, 6): 2,
          DateTime(2023, 2, 5): 2,
          DateTime(2023, 2, 4): 2,
          DateTime(2023, 2, 7): 2,
          DateTime(2023, 2, 10): 2,
          DateTime(2023, 2, 15): 2,
          DateTime(2023, 2, 16): 2,
          DateTime(2023, 2, 17): 2,
          DateTime(2023, 2, 3): 2,
          DateTime(2023, 2, 12): 2,
          DateTime(2023, 2, 15): 0,
          DateTime(2023, 2, 20): 2,
          DateTime(2023, 2, 25): 2,
          DateTime(2023, 2, 21): 1,
          DateTime(2023, 2, 28): 3,
          /////
          DateTime(2023, 3, 2): 1,
          DateTime(2023, 3, 5): 1,
          DateTime(2023, 3, 6): 1,
          DateTime(2023, 3, 9): 1,
          DateTime(2023, 3, 11): 1,
          DateTime(2023, 3, 13): 1,
          DateTime(2023, 3, 17): 1,
          DateTime(2023, 3, 16): 1,
          DateTime(2023, 3, 15): 2,
          DateTime(2023, 3, 20): 2,
          DateTime(2023, 3, 23): 1,
          DateTime(2023, 3, 30): 1,
          DateTime(2023, 3, 31): 1,
          DateTime(2023, 3, 25): 2,
          DateTime(2023, 3, 21): 1,
          DateTime(2023, 3, 28): 3,
          DateTime(2023, 3, 2): 1,
          /////
          DateTime(2023, 4, 1): 1,
          DateTime(2023, 4, 2): 2,
          DateTime(2023, 4, 5): 2,
          DateTime(2023, 4, 6): 3,
          DateTime(2023, 4, 8): 2,
          DateTime(2023, 4, 10): 1,
          DateTime(2023, 4, 12): 3,
          DateTime(2023, 4, 15): 2,
          DateTime(2023, 4, 16): 2,
          DateTime(2023, 4, 18): 3,
          DateTime(2023, 4, 19): 2,
          DateTime(2023, 4, 22): 3,
          DateTime(2023, 4, 25): 2,
          DateTime(2023, 4, 27): 1,
          DateTime(2023, 4, 28): 3,
          DateTime(2023, 4, 29): 2,
          //////
          DateTime(2023, 5, 1): 2,
          DateTime(2023, 5, 3): 1,
          DateTime(2023, 5, 4): 2,
          DateTime(2023, 5, 8): 3,
          DateTime(2023, 5, 6): 2,
          DateTime(2023, 5, 10): 2,
          DateTime(2023, 5, 12): 3,
        },
        colorMode: ColorMode.opacity,
        showText: false,
        /*   defaultColor: LightColors().primary, */
        scrollable: true,
        startDate: DateTime(2023, 2, 5),
        endDate: DateTime.now(),
        colorsets: const {
          1: Color.fromRGBO(37, 95, 163, 1),
        },
      ),
    );
  }
}
