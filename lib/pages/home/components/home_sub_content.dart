import 'package:flutter/material.dart';
import 'package:flutter_forwards/pages/home/components/service_statuses.dart';
import 'package:flutter_forwards/pages/home/components/user_ranking_scroll.dart';

class HomeSubContent extends StatelessWidget {
  const HomeSubContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -30),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.4,
          width: double.infinity,
          color: Colors.white,
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ServiceStatuses(),
              UserRankingScroll(),
            ],
          ),
        ),
      ),
    );
  }
}
