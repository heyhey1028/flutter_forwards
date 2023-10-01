import 'package:flutter_forwards/models/app_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/service_status.dart';

part 'ui_state.freezed.dart';

@freezed
class HomePageUiState with _$HomePageUiState {
  const factory HomePageUiState({
    required AppUser user,
    @Default([]) List<ServiceStatus> serviceStatuses,
  }) = _HomePageUiState;
}
