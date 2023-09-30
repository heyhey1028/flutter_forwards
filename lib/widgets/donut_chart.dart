import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AppDonutChart extends StatelessWidget {
  const AppDonutChart({super.key, required this.amount, required this.value, required this.color});

  final int amount;
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 240,
      child: Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "$value",
                  style: const TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                  ),
                ),
                const Text(
                  "%",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          PieChart(
            PieChartData(
              startDegreeOffset: 270,
              sections: [
                PieChartSectionData(
                  color: color, // TODO: color map
                  value: value.toDouble(),
                  title: "",
                  radius: 20,
                ),
                PieChartSectionData(
                  color: Colors.transparent,
                  value: (amount - value).toDouble(),
                  title: "",
                  radius: 20,
                ),
              ],
              sectionsSpace: 0,
              centerSpaceRadius: 90,
            ),
          ),
        ],
      ),
    );
  }
}
