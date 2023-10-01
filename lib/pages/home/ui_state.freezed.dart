// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageUiState {
  AppUser get user => throw _privateConstructorUsedError;
  List<ServiceStatus> get serviceStatuses => throw _privateConstructorUsedError;
  UserAchievement? get userAchievements => throw _privateConstructorUsedError;
  List<UserSum> get userSums => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageUiStateCopyWith<HomePageUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageUiStateCopyWith<$Res> {
  factory $HomePageUiStateCopyWith(
          HomePageUiState value, $Res Function(HomePageUiState) then) =
      _$HomePageUiStateCopyWithImpl<$Res, HomePageUiState>;
  @useResult
  $Res call(
      {AppUser user,
      List<ServiceStatus> serviceStatuses,
      UserAchievement? userAchievements,
      List<UserSum> userSums});

  $AppUserCopyWith<$Res> get user;
  $UserAchievementCopyWith<$Res>? get userAchievements;
}

/// @nodoc
class _$HomePageUiStateCopyWithImpl<$Res, $Val extends HomePageUiState>
    implements $HomePageUiStateCopyWith<$Res> {
  _$HomePageUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? serviceStatuses = null,
    Object? userAchievements = freezed,
    Object? userSums = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
      serviceStatuses: null == serviceStatuses
          ? _value.serviceStatuses
          : serviceStatuses // ignore: cast_nullable_to_non_nullable
              as List<ServiceStatus>,
      userAchievements: freezed == userAchievements
          ? _value.userAchievements
          : userAchievements // ignore: cast_nullable_to_non_nullable
              as UserAchievement?,
      userSums: null == userSums
          ? _value.userSums
          : userSums // ignore: cast_nullable_to_non_nullable
              as List<UserSum>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAchievementCopyWith<$Res>? get userAchievements {
    if (_value.userAchievements == null) {
      return null;
    }

    return $UserAchievementCopyWith<$Res>(_value.userAchievements!, (value) {
      return _then(_value.copyWith(userAchievements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageUiStateImplCopyWith<$Res>
    implements $HomePageUiStateCopyWith<$Res> {
  factory _$$HomePageUiStateImplCopyWith(_$HomePageUiStateImpl value,
          $Res Function(_$HomePageUiStateImpl) then) =
      __$$HomePageUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUser user,
      List<ServiceStatus> serviceStatuses,
      UserAchievement? userAchievements,
      List<UserSum> userSums});

  @override
  $AppUserCopyWith<$Res> get user;
  @override
  $UserAchievementCopyWith<$Res>? get userAchievements;
}

/// @nodoc
class __$$HomePageUiStateImplCopyWithImpl<$Res>
    extends _$HomePageUiStateCopyWithImpl<$Res, _$HomePageUiStateImpl>
    implements _$$HomePageUiStateImplCopyWith<$Res> {
  __$$HomePageUiStateImplCopyWithImpl(
      _$HomePageUiStateImpl _value, $Res Function(_$HomePageUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? serviceStatuses = null,
    Object? userAchievements = freezed,
    Object? userSums = null,
  }) {
    return _then(_$HomePageUiStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
      serviceStatuses: null == serviceStatuses
          ? _value._serviceStatuses
          : serviceStatuses // ignore: cast_nullable_to_non_nullable
              as List<ServiceStatus>,
      userAchievements: freezed == userAchievements
          ? _value.userAchievements
          : userAchievements // ignore: cast_nullable_to_non_nullable
              as UserAchievement?,
      userSums: null == userSums
          ? _value._userSums
          : userSums // ignore: cast_nullable_to_non_nullable
              as List<UserSum>,
    ));
  }
}

/// @nodoc

class _$HomePageUiStateImpl implements _HomePageUiState {
  const _$HomePageUiStateImpl(
      {required this.user,
      final List<ServiceStatus> serviceStatuses = const [],
      this.userAchievements,
      final List<UserSum> userSums = const []})
      : _serviceStatuses = serviceStatuses,
        _userSums = userSums;

  @override
  final AppUser user;
  final List<ServiceStatus> _serviceStatuses;
  @override
  @JsonKey()
  List<ServiceStatus> get serviceStatuses {
    if (_serviceStatuses is EqualUnmodifiableListView) return _serviceStatuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceStatuses);
  }

  @override
  final UserAchievement? userAchievements;
  final List<UserSum> _userSums;
  @override
  @JsonKey()
  List<UserSum> get userSums {
    if (_userSums is EqualUnmodifiableListView) return _userSums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userSums);
  }

  @override
  String toString() {
    return 'HomePageUiState(user: $user, serviceStatuses: $serviceStatuses, userAchievements: $userAchievements, userSums: $userSums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageUiStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._serviceStatuses, _serviceStatuses) &&
            (identical(other.userAchievements, userAchievements) ||
                other.userAchievements == userAchievements) &&
            const DeepCollectionEquality().equals(other._userSums, _userSums));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_serviceStatuses),
      userAchievements,
      const DeepCollectionEquality().hash(_userSums));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageUiStateImplCopyWith<_$HomePageUiStateImpl> get copyWith =>
      __$$HomePageUiStateImplCopyWithImpl<_$HomePageUiStateImpl>(
          this, _$identity);
}

abstract class _HomePageUiState implements HomePageUiState {
  const factory _HomePageUiState(
      {required final AppUser user,
      final List<ServiceStatus> serviceStatuses,
      final UserAchievement? userAchievements,
      final List<UserSum> userSums}) = _$HomePageUiStateImpl;

  @override
  AppUser get user;
  @override
  List<ServiceStatus> get serviceStatuses;
  @override
  UserAchievement? get userAchievements;
  @override
  List<UserSum> get userSums;
  @override
  @JsonKey(ignore: true)
  _$$HomePageUiStateImplCopyWith<_$HomePageUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
