import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_forwards/models/total_sum.dart';
import 'package:flutter_forwards/repository/db_repository.dart';
import 'package:flutter_forwards/util/color.dart';
import 'package:flutter_forwards/util/double_extension.dart';
import 'package:flutter_forwards/widgets/donut_chart.dart';
import 'package:flutter_forwards/widgets/ranking_chart.dart';
import 'package:provider/provider.dart';

import '../../models/user_sum.dart';
import 'change_notifier.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait([
        DBrepository.getUserSums(),
        DBrepository.getTotalSums(),
      ]),
      builder: (context, AsyncSnapshot snapshot) {
        debugPrint(snapshot.toString());

        if (snapshot.connectionState != ConnectionState.done) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (snapshot.hasData) {
          final List<UserSum> userSumList = snapshot.data[0]!;
          final TotalSum totalSum = snapshot.data[1]!;
          return ChangeNotifierProvider(
            create: (context) => AdminPageChangeNotifier(),
            child: Scaffold(
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
                  const SearchBar(
                    hintText: "ユーザー検索",
                  ),
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
                    backgroundImage:
                        NetworkImage("https://upload.wikimedia.org/wikipedia/commons/1/1f/Ohagi_Botamochi.jpg"),
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
                                      amount: totalSum.monthlyTarget * totalSum.teamMemberCount,
                                      value: totalSum.totalTeamScreenTimes,
                                      color: Colors.white,
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
                        const SizedBox(
                          width: 24,
                        ),
                        SizedBox(
                          width: 1000,
                          height: 326,
                          child: RankingChart(
                            userSums: userSumList,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Wrap(
                      runSpacing: 24,
                      spacing: 24,
                      children: [
                        ...userSumList.map((e) {
                          return _IndividualCard(
                              name: e.userName,
                              progressText: "${e.sum}分",
                              achievementRatio: (e.sum / e.monthlyTarget),
                              iconUrl: e.userIconPath);
                        }).toList(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}

class _IndividualCard extends StatelessWidget {
  const _IndividualCard(
      {required this.name, required this.progressText, required this.achievementRatio, required this.iconUrl});

  final String name;
  final String progressText;
  final double achievementRatio;
  final String iconUrl;

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
                  iconUrl,
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
              bottom: 16,
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
              bottom: 16,
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
