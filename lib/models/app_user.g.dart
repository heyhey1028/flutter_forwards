// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      teamId: json['team_id'] as String?,
      role: _roleFromJson(json['role'] as String?),
      iconPath: json['icon_path'] as String? ??
          'https://firebasestorage.googleapis.com/v0/b/gs-expansion-test.appspot.com/o/unknown_person.png?alt=media',
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'team_id': instance.teamId,
      'role': _$RoleEnumMap[instance.role]!,
      'icon_path': instance.iconPath,
    };

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.user: 'user',
};
