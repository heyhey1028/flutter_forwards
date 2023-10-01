// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_status.freezed.dart';
part 'service_status.g.dart';

@freezed
class ServiceStatus with _$ServiceStatus {
  factory ServiceStatus({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(
      name: 'user_name',
      fromJson: _nameFromJson,
    )
    required String userName,
    @JsonKey(name: 'team_id') required String teamId,
    @JsonKey(name: 'monthly_target') required int monthlyTarget,
    required int sum,
    // service_id
    @JsonKey(name: 'service_id') required String serviceId,
    // service_name
    @JsonKey(name: 'service_name') required String serviceName,
    // icon_path
    @JsonKey(name: 'icon_path') required String iconPath,
  }) = _ServiceStatus;

  factory ServiceStatus.fromJson(Map<String, dynamic> json) => _$ServiceStatusFromJson(json);
}

String _nameFromJson(String? json) {
  return utf8.decode(json?.runes.toList() ?? []);
}
