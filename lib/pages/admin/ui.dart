import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_forwards/util/color.dart';
import 'package:flutter_forwards/util/double_extension.dart';
import 'package:flutter_forwards/widgets/donut_chart.dart';
import 'package:flutter_forwards/widgets/ranking_chart.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 32,
          ),
          onPressed: () async {},
        ),
        actions: [
          const SearchBar(),
          const SizedBox(
            width: 24,
          ),
          IconButton(
            icon: const Icon(
              Icons.info,
              size: 32,
            ),
            onPressed: () async {},
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              size: 32,
            ),
            onPressed: () async {},
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg"),
            radius: 16,
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 56,
            ),
            const Text(
              "2023年10月1日",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "英語スカウター事業本部　営業企画チーム",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
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
                const SizedBox(
                  width: 24,
                ),
                SizedBox(
                  width: 1000,
                  height: 326,
                  child: RankingChart(
                    personalScores: _dummy(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Wrap(
              runSpacing: 24,
              spacing: 24,
              children: [
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 0.1,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 0.2,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 0.3,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 0.4,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 0.5,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 0.6,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 0.7,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 0.8,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 0.9,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 1.0,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 1.1,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 1.2,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 1.3,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 1.4,
                ),
                _IndividualCard(
                  name: "ぼたもち",
                  progressText: "55時間",
                  achievementRatio: 1.5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static List<PersonalScore> _dummy() {
    return [
      PersonalScore(
        value: 0.1,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
      PersonalScore(
        value: 0.2,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
      PersonalScore(
        value: 0.3,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
      PersonalScore(
        value: 0.4,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
      PersonalScore(
        value: 0.5,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
      PersonalScore(
        value: 0.6,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
      PersonalScore(
        value: 0.7,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
      PersonalScore(
        value: 0.8,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
      PersonalScore(
        value: 0.9,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
      PersonalScore(
        value: 0.9,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
      PersonalScore(
        value: 1.0,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
      PersonalScore(
        value: 1.0,
        userIconImageURL: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg",
      ),
    ];
  }
}

class _IndividualCard extends StatelessWidget {
  const _IndividualCard({required this.name, required this.progressText, required this.achievementRatio});

  final String name;
  final String progressText;
  final double achievementRatio;

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
              width: min(200 * achievementRatio, 200),
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: achievementRatio.toDegreeColor(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
