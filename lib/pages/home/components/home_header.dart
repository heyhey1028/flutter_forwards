import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/app_user.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.user,
  });

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              size: 32,
            ),
            onPressed: () async {},
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  DateFormat('yyyy年MM月dd日').format(
                    DateTime.now(),
                  ),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.expand_more),
              ],
            ),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(user.iconPath),
            radius: 16,
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
