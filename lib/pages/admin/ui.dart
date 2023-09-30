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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorUtil.colorFromHex("32C864"),
                ),
                child: const SizedBox(
                  width: 326,
                  height: 326,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
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
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Text(
                        "とてもいい状態ですね！",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
