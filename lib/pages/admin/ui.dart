import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_forwards/util/color.dart';
import 'package:flutter_forwards/util/double_extension.dart';
import 'package:flutter_forwards/widgets/donut_chart.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Wrap(
              runSpacing: 24,
              spacing: 24,
              children: [
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 0.1,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 0.2,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 0.3,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 0.4,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 0.5,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 0.6,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 0.7,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 0.8,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 0.9,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 1.0,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 1.1,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 1.2,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 1.3,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 1.4,
                ),
                _individualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  archivementRatio: 1.5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _individualCard extends StatelessWidget {
  _individualCard({super.key, required this.name, required this.progressText, required this.archivementRatio});

  final String name;
  final String progressText;
  final double archivementRatio;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: SizedBox(
        height: 98,
        width: 326,
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 16,
              bottom: 16,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
                  height: 66,
                  width: 66,
                ),
              ),
            ),
            Positioned(
              top: 16,
              left: 96,
              child: Text(name),
            ),
            Positioned(
              top: 16,
              right: 24,
              child: Text(progressText),
            ),
            Positioned(
              left: 96,
              top: 48,
              bottom: 0,
              width: 200,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorUtil.colorFromHex("F0F5F0"),
                ),
              ),
            ),
            Positioned(
              left: 96,
              top: 48,
              width: min(200 * archivementRatio, 200),
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: archivementRatio.toDegreeColor(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
