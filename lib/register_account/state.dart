import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class Service with _$Service {
  const factory Service({
    required int id,
    required String name,
  }) = _Service;
}
