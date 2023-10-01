import 'package:flutter/foundation.dart';
import 'package:flutter_forwards/models/service_status.dart';
import 'package:flutter_forwards/pages/home/ui_state.dart';

import '../../models/app_user.dart';

class HomePageChangeNotifier extends ChangeNotifier {
  HomePageChangeNotifier({
    required this.user,
    required this.serviceStatuses,
  });
  final AppUser user;
  final List<ServiceStatus> serviceStatuses;

  late HomePageUiState _uiState;
  HomePageUiState get uiState => _uiState;

  Future<void> initialize() async {
    _uiState = HomePageUiState(user: user, serviceStatuses: serviceStatuses);
    notifyListeners();
  }

  double getPercentage({required ServiceStatus serviceStatus}) {
    final copiedStatusList = List<ServiceStatus>.from(_uiState.serviceStatuses);
    copiedStatusList.sort((a, b) => b.sum.compareTo(a.sum));
    final largestService = copiedStatusList.first;
    if (largestService.serviceId == serviceStatus.serviceId) {
      return 1;
    } else {
      return serviceStatus.sum / largestService.sum;
    }
  }
}
