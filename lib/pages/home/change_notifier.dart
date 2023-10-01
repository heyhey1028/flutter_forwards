import 'package:flutter/foundation.dart';
import 'package:flutter_forwards/models/service_status.dart';
import 'package:flutter_forwards/pages/home/ui_state.dart';

import '../../models/app_user.dart';
import '../../models/user_achievement.dart';
import '../../models/user_sum.dart';
import '../../repository/db_repository.dart';

class HomePageChangeNotifier extends ChangeNotifier {
  HomePageChangeNotifier({
    required this.user,
    required this.serviceStatuses,
    required this.userAchievements,
    required this.userSums,
  });
  final AppUser user;
  final List<ServiceStatus> serviceStatuses;
  final UserAchievement userAchievements;
  final List<UserSum> userSums;

  late HomePageUiState _uiState;
  HomePageUiState get uiState => _uiState;

  void initialize() async {
    _uiState = HomePageUiState(
      user: user,
      serviceStatuses: serviceStatuses,
      userAchievements: userAchievements,
      userSums: userSums,
    );
    notifyListeners();
  }

  Future<void> refresh(String userId) {
    return Future.wait([
      DBrepository.getUser(userId),
      DBrepository.getServiceStatus(userId: userId),
      DBrepository.getUserAchievement(userId),
      DBrepository.getUserSums(),
    ]).then((value) {
      _uiState = HomePageUiState(
        user: value[0] as AppUser,
        serviceStatuses: value[1] as List<ServiceStatus>,
        userAchievements: value[2] as UserAchievement,
        userSums: value[3] as List<UserSum>,
      );
      notifyListeners();
    });
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
