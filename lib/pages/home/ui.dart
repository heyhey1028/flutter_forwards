import 'package:flutter/material.dart';
import 'package:flutter_forwards/pages/home/change_notifier.dart';
import 'package:flutter_forwards/pages/home/components/home_main_content.dart';
import 'package:flutter_forwards/pages/home/components/home_sub_content.dart';
import 'package:flutter_forwards/repository/auth_repository.dart';
import 'package:flutter_forwards/repository/db_repository.dart';
import 'package:provider/provider.dart';

import 'components/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = AuthRepository.user;

    return FutureBuilder(
      // future: DBrepository.getUser(user?.id),
      future: Future.wait([
        DBrepository.getUser('c5ef7315-ee00-42f0-b942-b4a92a1aaba7'),
        DBrepository.getServiceStatus(userId: 'c5ef7315-ee00-42f0-b942-b4a92a1aaba7'),
      ]),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (snapshot.hasData) {
          return ChangeNotifierProvider(
            create: (context) => HomePageChangeNotifier(
              user: snapshot.data![0],
              serviceStatuses: snapshot.data![1],
            )..initialize(),
            child: const HomePageView(),
          );
        }

        return const Scaffold(
          body: Center(
            child: Text('ユーザーが見つかりませんでした'),
          ),
        );
      },
    );
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((HomePageChangeNotifier value) => value.uiState.user);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeHeader(user: user),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HomeMainContent(),
                    HomeSubContent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
