// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sum.freezed.dart';
part 'user_sum.g.dart';

@freezed
class UserSum with _$UserSum {
  factory UserSum({
    // user_id
    @JsonKey(name: 'user_id') required String userId,
    // user_name
    @JsonKey(
      name: 'user_name',
      fromJson: _nameFromJson,
    )
    required String userName,
    // user_icon_path
    @JsonKey(name: 'user_icon_path') required String userIconPath,
    // team_id
    @JsonKey(name: 'team_id') required String teamId,
    // monthly_target
    @JsonKey(name: 'monthly_target') required int monthlyTarget,
    // sum
    required int sum,
  }) = _UserSum;

  factory UserSum.fromJson(Map<String, dynamic> json) => _$UserSumFromJson(json);
}

String _nameFromJson(String? json) {
  return utf8.decode(json?.runes.toList() ?? []);
}
