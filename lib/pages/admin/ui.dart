import 'package:flutter/material.dart';
import 'package:flutter_forwards/util/color.dart';
import 'package:flutter_forwards/widgets/donut_chart.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorUtil.colorFromHex("32C864"),
        ),
        child: SizedBox(
          width: 326,
          height: 326,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 12,
              ),
              const Text(
                "チームスコア",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppDonutChart(
                    amount: 100,
                    value: 80,
                    color: ColorUtil.colorFromHex("FAFA7D"),
                  ),
                ],
              ),
              const Text(
                "とてもいい状態ですね！",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
