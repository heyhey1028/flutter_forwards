import 'package:flutter/material.dart';
import 'package:flutter_forwards/widgets/ranking_chart.dart';

import '../../../repository/db_repository.dart';

class UserRankingScroll extends StatefulWidget {
  const UserRankingScroll({super.key});

  @override
  State<UserRankingScroll> createState() => _UserRankingScrollState();
}

class _UserRankingScrollState extends State<UserRankingScroll> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '個別スコア順位表',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 6),
          const Divider(
            height: 1,
            color: Colors.grey,
          ),
          const SizedBox(height: 16),
          FutureBuilder(
            future: DBrepository.getUserSums(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 800,
                        child: RankingChart(userSums: snapshot.data!),
                      ),
                    ],
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
