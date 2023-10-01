import 'package:flutter_forwards/models/app_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/service_status.dart';
import '../../models/user_achievement.dart';
import '../../models/user_sum.dart';

part 'ui_state.freezed.dart';

@freezed
class HomePageUiState with _$HomePageUiState {
  const factory HomePageUiState({
    required AppUser user,
    @Default([]) List<ServiceStatus> serviceStatuses,
    UserAchievement? userAchievements,
    @Default([]) List<UserSum> userSums,
  }) = _HomePageUiState;
}
