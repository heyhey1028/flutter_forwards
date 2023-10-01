// ignore_for_file: invalid_annotation_target

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  factory AppUser({
    required String id,
    @Default('') String name,
    @JsonKey(name: 'team_id') String? teamId,
    @JsonKey(fromJson: _roleFromJson) required Role role,
    @JsonKey(defaultValue: 'https://firebasestorage.googleapis.com/v0/b/gs-expansion-test.appspot.com/o/unknown_person.png?alt=media', name: 'icon_path') required String iconPath,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);
}

Role _roleFromJson(String? json) {
  return Role.values.firstWhereOrNull((element) => element.name == json) ?? Role.user;
}

enum Role {
  admin,
  user;
}
