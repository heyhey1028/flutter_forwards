import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_forwards/util/color.dart';

class PersonalScore {
  final double value;
  final String userIconImageURL;

  PersonalScore({required this.value, required this.userIconImageURL});
}

class RankingChart extends StatelessWidget {
  const RankingChart({Key? key, required this.personalScores})
      : super(key: key);

  final List<PersonalScore> personalScores;

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        gridData: const FlGridData(show: false),
        titlesData: FlTitlesData(
          leftTitles: const AxisTitles(),
          rightTitles: const AxisTitles(),
          bottomTitles: const AxisTitles(),
          topTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 48,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.0),
                    child: Image.network(
                      personalScores[index].userIconImageURL,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        borderData: FlBorderData(
          show: false,
          border: const Border(
            top: BorderSide.none,
            right: BorderSide.none,
            left: BorderSide.none,
            bottom: BorderSide.none,
          ),
        ),
        groupsSpace: 20,
        barGroups: barGroups(personalScores),
      ),
    );
  }

  List<BarChartGroupData> barGroups(List<PersonalScore> scores) {
    return scores
        .asMap()
        .map(
          (index, score) => MapEntry(
            index,
            BarChartGroupData(
              x: index,
              barRods: [
                BarChartRodData(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  toY: score.value,
                  width: 48,
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 1.0,
                    color: ColorUtil.colorFromHex('F0F5F0'),
                  ),
                  color: barColor(score.value),
                ),
              ],
            ),
          ),
        )
        .values
        .toList();
  }

  Color barColor(double value) {
    if (value <= 0.2) {
      return ColorUtil.colorFromHex('CF7B60');
    } else if (value <= 0.4) {
      return ColorUtil.colorFromHex('CFA960');
    } else if (value <= 0.6) {
      return ColorUtil.colorFromHex('B9CF60');
    } else if (value <= 0.8) {
      return ColorUtil.colorFromHex('8ACF60');
    } else {
      return ColorUtil.colorFromHex('32C864');
    }
  }
}
