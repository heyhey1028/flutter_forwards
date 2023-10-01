// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_achievement.freezed.dart';
part 'user_achievement.g.dart';

@freezed
class UserAchievement with _$UserAchievement {
  factory UserAchievement({
    // total_service_screen_times
    @JsonKey(name: 'total_service_screen_times') required int totalServiceScreenTimes,
    // monthly_target
    @JsonKey(name: 'monthly_target') required int monthlyTarget,
    // icon_path
    @JsonKey(name: 'user_icon_path') required String iconPath,
  }) = _UserAchievement;

  factory UserAchievement.fromJson(Map<String, dynamic> json) => _$UserAchievementFromJson(json);
}
