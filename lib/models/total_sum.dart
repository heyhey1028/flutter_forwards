// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'total_sum.freezed.dart';
part 'total_sum.g.dart';

@freezed
class TotalSum with _$TotalSum {
  factory TotalSum({
    @JsonKey(name: "total_team_screen_times") required int totalTeamScreenTimes,
    @JsonKey(name: "team_member_count") required int teamMemberCount,
    @JsonKey(name: "monthly_target") required int monthlyTarget,
  }) = _TotalSum;

  factory TotalSum.fromJson(Map<String, dynamic> json) => _$TotalSumFromJson(json);
}
