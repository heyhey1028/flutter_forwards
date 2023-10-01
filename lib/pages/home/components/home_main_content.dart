import 'package:flutter/material.dart';
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
        child: const Column(
          children: [
            SizedBox(height: 16),
            Text(
              'すばらしい! もう一踏ん張り!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            AppDonutChart(
              amount: 100,
              value: 80,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
