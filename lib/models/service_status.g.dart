// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceStatusImpl _$$ServiceStatusImplFromJson(Map<String, dynamic> json) =>
    _$ServiceStatusImpl(
      userId: json['user_id'] as String,
      userName: _nameFromJson(json['user_name'] as String?),
      teamId: json['team_id'] as String,
      monthlyTarget: json['monthly_target'] as int,
      sum: json['sum'] as int,
      serviceId: json['service_id'] as String,
      serviceName: json['service_name'] as String,
      iconPath: json['icon_path'] as String,
    );

Map<String, dynamic> _$$ServiceStatusImplToJson(_$ServiceStatusImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.userName,
      'team_id': instance.teamId,
      'monthly_target': instance.monthlyTarget,
      'sum': instance.sum,
      'service_id': instance.serviceId,
      'service_name': instance.serviceName,
      'icon_path': instance.iconPath,
    };
