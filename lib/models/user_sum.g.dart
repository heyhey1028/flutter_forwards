// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSumImpl _$$UserSumImplFromJson(Map<String, dynamic> json) =>
    _$UserSumImpl(
      userId: json['user_id'] as String,
      userName: _nameFromJson(json['user_name'] as String?),
      userIconPath: json['user_icon_path'] as String,
      teamId: json['team_id'] as String,
      monthlyTarget: json['monthly_target'] as int,
      sum: json['sum'] as int,
    );

Map<String, dynamic> _$$UserSumImplToJson(_$UserSumImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_icon_path': instance.userIconPath,
      'team_id': instance.teamId,
      'monthly_target': instance.monthlyTarget,
      'sum': instance.sum,
    };
