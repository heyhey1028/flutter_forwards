import 'package:flutter/foundation.dart';

import 'ui_state.dart';

class SamplePageChangeNotifier extends ChangeNotifier {
  SamplePageUiState _uiState = const SamplePageUiState();

  SamplePageUiState get uiState => _uiState;

  void increment() {
    _uiState = _uiState.copyWith(count: _uiState.count + 1);
    notifyListeners();
  }
}
