import 'package:flutter/foundation.dart';

class SamplePageChangeNotifier extends ChangeNotifier {
  var count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}

