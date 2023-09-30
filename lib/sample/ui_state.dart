import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';

@freezed
class SamplePageUiState with _$SamplePageUiState {
  const factory SamplePageUiState({
    @Default(0) int count,
  }) = _SamplePageUiState;
}
