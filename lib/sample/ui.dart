import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'change_notifier.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SamplePageChangeNotifier(),
      child: const SamplePageView(),
    );
  }
}

class SamplePageView extends StatelessWidget {
  const SamplePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final changeNotifier = context.read<SamplePageChangeNotifier>();
    final count = context.select((SamplePageChangeNotifier value) => value.state.count);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeNotifier.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
