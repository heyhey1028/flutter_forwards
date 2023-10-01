// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_achievement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAchievement _$UserAchievementFromJson(Map<String, dynamic> json) {
  return _UserAchievement.fromJson(json);
}

/// @nodoc
mixin _$UserAchievement {
// total_service_screen_times
  @JsonKey(name: 'total_service_screen_times')
  int get totalServiceScreenTimes =>
      throw _privateConstructorUsedError; // monthly_target
  @JsonKey(name: 'monthly_target')
  int get monthlyTarget => throw _privateConstructorUsedError; // icon_path
  @JsonKey(name: 'user_icon_path')
  String get iconPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAchievementCopyWith<UserAchievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAchievementCopyWith<$Res> {
  factory $UserAchievementCopyWith(
          UserAchievement value, $Res Function(UserAchievement) then) =
      _$UserAchievementCopyWithImpl<$Res, UserAchievement>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_service_screen_times') int totalServiceScreenTimes,
      @JsonKey(name: 'monthly_target') int monthlyTarget,
      @JsonKey(name: 'user_icon_path') String iconPath});
}

/// @nodoc
class _$UserAchievementCopyWithImpl<$Res, $Val extends UserAchievement>
    implements $UserAchievementCopyWith<$Res> {
  _$UserAchievementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalServiceScreenTimes = null,
    Object? monthlyTarget = null,
    Object? iconPath = null,
  }) {
    return _then(_value.copyWith(
      totalServiceScreenTimes: null == totalServiceScreenTimes
          ? _value.totalServiceScreenTimes
          : totalServiceScreenTimes // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyTarget: null == monthlyTarget
          ? _value.monthlyTarget
          : monthlyTarget // ignore: cast_nullable_to_non_nullable
              as int,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAchievementImplCopyWith<$Res>
    implements $UserAchievementCopyWith<$Res> {
  factory _$$UserAchievementImplCopyWith(_$UserAchievementImpl value,
          $Res Function(_$UserAchievementImpl) then) =
      __$$UserAchievementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_service_screen_times') int totalServiceScreenTimes,
      @JsonKey(name: 'monthly_target') int monthlyTarget,
      @JsonKey(name: 'user_icon_path') String iconPath});
}

/// @nodoc
class __$$UserAchievementImplCopyWithImpl<$Res>
    extends _$UserAchievementCopyWithImpl<$Res, _$UserAchievementImpl>
    implements _$$UserAchievementImplCopyWith<$Res> {
  __$$UserAchievementImplCopyWithImpl(
      _$UserAchievementImpl _value, $Res Function(_$UserAchievementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalServiceScreenTimes = null,
    Object? monthlyTarget = null,
    Object? iconPath = null,
  }) {
    return _then(_$UserAchievementImpl(
      totalServiceScreenTimes: null == totalServiceScreenTimes
          ? _value.totalServiceScreenTimes
          : totalServiceScreenTimes // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyTarget: null == monthlyTarget
          ? _value.monthlyTarget
          : monthlyTarget // ignore: cast_nullable_to_non_nullable
              as int,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAchievementImpl implements _UserAchievement {
  _$UserAchievementImpl(
      {@JsonKey(name: 'total_service_screen_times')
      required this.totalServiceScreenTimes,
      @JsonKey(name: 'monthly_target') required this.monthlyTarget,
      @JsonKey(name: 'user_icon_path') required this.iconPath});

  factory _$UserAchievementImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAchievementImplFromJson(json);

// total_service_screen_times
  @override
  @JsonKey(name: 'total_service_screen_times')
  final int totalServiceScreenTimes;
// monthly_target
  @override
  @JsonKey(name: 'monthly_target')
  final int monthlyTarget;
// icon_path
  @override
  @JsonKey(name: 'user_icon_path')
  final String iconPath;

  @override
  String toString() {
    return 'UserAchievement(totalServiceScreenTimes: $totalServiceScreenTimes, monthlyTarget: $monthlyTarget, iconPath: $iconPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAchievementImpl &&
            (identical(
                    other.totalServiceScreenTimes, totalServiceScreenTimes) ||
                other.totalServiceScreenTimes == totalServiceScreenTimes) &&
            (identical(other.monthlyTarget, monthlyTarget) ||
                other.monthlyTarget == monthlyTarget) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalServiceScreenTimes, monthlyTarget, iconPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAchievementImplCopyWith<_$UserAchievementImpl> get copyWith =>
      __$$UserAchievementImplCopyWithImpl<_$UserAchievementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAchievementImplToJson(
      this,
    );
  }
}

abstract class _UserAchievement implements UserAchievement {
  factory _UserAchievement(
          {@JsonKey(name: 'total_service_screen_times')
          required final int totalServiceScreenTimes,
          @JsonKey(name: 'monthly_target') required final int monthlyTarget,
          @JsonKey(name: 'user_icon_path') required final String iconPath}) =
      _$UserAchievementImpl;

  factory _UserAchievement.fromJson(Map<String, dynamic> json) =
      _$UserAchievementImpl.fromJson;

  @override // total_service_screen_times
  @JsonKey(name: 'total_service_screen_times')
  int get totalServiceScreenTimes;
  @override // monthly_target
  @JsonKey(name: 'monthly_target')
  int get monthlyTarget;
  @override // icon_path
  @JsonKey(name: 'user_icon_path')
  String get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$UserAchievementImplCopyWith<_$UserAchievementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
