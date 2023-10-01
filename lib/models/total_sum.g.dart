// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_sum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TotalSumImpl _$$TotalSumImplFromJson(Map<String, dynamic> json) =>
    _$TotalSumImpl(
      totalTeamScreenTimes: json['total_team_screen_times'] as int,
      teamMemberCount: json['team_member_count'] as int,
      monthlyTarget: json['monthly_target'] as int,
    );

Map<String, dynamic> _$$TotalSumImplToJson(_$TotalSumImpl instance) =>
    <String, dynamic>{
      'total_team_screen_times': instance.totalTeamScreenTimes,
      'team_member_count': instance.teamMemberCount,
      'monthly_target': instance.monthlyTarget,
    };
