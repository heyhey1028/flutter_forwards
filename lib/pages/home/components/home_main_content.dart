import 'package:flutter/material.dart';
import 'package:flutter_forwards/models/user_achievement.dart';
import 'package:flutter_forwards/repository/db_repository.dart';
import 'package:flutter_forwards/widgets/donut_chart.dart';

class HomeMainContent extends StatelessWidget {
  const HomeMainContent({super.key});

  @override
  Widget build(BuildContext context) {
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
            FutureBuilder(
              future: DBrepository.getUserAchievement('c5ef7315-ee00-42f0-b942-b4a92a1aaba7'),
              builder: (context, AsyncSnapshot<UserAchievement?> snapshot) {
                if (snapshot.hasData) {
                  final data = snapshot.data;
                  return const AppDonutChart(
                    amount: 100,
                    value: 80,
                    color: Colors.white,
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
