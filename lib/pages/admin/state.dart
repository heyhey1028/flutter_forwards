import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class AdminPageUiState with _$AdminPageUiState {
  const AdminPageUiState._();

  const factory AdminPageUiState({
    @Default(1) int totalTeamScreenTimes,
    @Default(1) int teamMemberCount,
    @Default(1) int monthlyTarget,
  }) = _AdminPageUiState;

  double get achievementRate {
    if (teamMemberCount == 0) {
      return 0;
    }
    return totalTeamScreenTimes / (teamMemberCount * monthlyTarget);
  }
}