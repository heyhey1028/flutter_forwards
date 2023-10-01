import 'package:flutter/material.dart';
import 'package:flutter_forwards/widgets/donut_chart.dart';
import 'package:provider/provider.dart';

import '../change_notifier.dart';

class HomeMainContent extends StatelessWidget {
  const HomeMainContent({super.key});

  @override
  Widget build(BuildContext context) {
    final userAchievement = context.select((HomePageChangeNotifier value) => value.uiState.userAchievements);

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: double.infinity,
        color: const Color(0xFF32C864),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              'すばらしい! もう一踏ん張り!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            AppDonutChart(
              amount: userAchievement!.monthlyTarget,
              value: userAchievement.totalServiceScreenTimes,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
