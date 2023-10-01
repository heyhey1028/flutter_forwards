import 'package:flutter/material.dart';
import 'package:flutter_forwards/pages/admin/state.dart';

class AdminPageChangeNotifier extends ChangeNotifier {

  late AdminPageUiState _uiState;
  AdminPageUiState get uiState => _uiState;

  Future<void> initialize() async {
    _uiState = const AdminPageUiState();
    notifyListeners();
  }
}