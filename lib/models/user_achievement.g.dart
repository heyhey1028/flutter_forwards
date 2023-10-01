// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_achievement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAchievementImpl _$$UserAchievementImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAchievementImpl(
      totalServiceScreenTimes: json['total_service_screen_times'] as int,
      monthlyTarget: json['monthly_target'] as int,
      iconPath: json['user_icon_path'] as String,
    );

Map<String, dynamic> _$$UserAchievementImplToJson(
        _$UserAchievementImpl instance) =>
    <String, dynamic>{
      'total_service_screen_times': instance.totalServiceScreenTimes,
      'monthly_target': instance.monthlyTarget,
      'user_icon_path': instance.iconPath,
    };
