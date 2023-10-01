// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminPageUiState {
  int get totalTeamScreenTimes => throw _privateConstructorUsedError;
  int get teamMemberCount => throw _privateConstructorUsedError;
  int get monthlyTarget => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminPageUiStateCopyWith<AdminPageUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminPageUiStateCopyWith<$Res> {
  factory $AdminPageUiStateCopyWith(
          AdminPageUiState value, $Res Function(AdminPageUiState) then) =
      _$AdminPageUiStateCopyWithImpl<$Res, AdminPageUiState>;
  @useResult
  $Res call({int totalTeamScreenTimes, int teamMemberCount, int monthlyTarget});
}

/// @nodoc
class _$AdminPageUiStateCopyWithImpl<$Res, $Val extends AdminPageUiState>
    implements $AdminPageUiStateCopyWith<$Res> {
  _$AdminPageUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTeamScreenTimes = null,
    Object? teamMemberCount = null,
    Object? monthlyTarget = null,
  }) {
    return _then(_value.copyWith(
      totalTeamScreenTimes: null == totalTeamScreenTimes
          ? _value.totalTeamScreenTimes
          : totalTeamScreenTimes // ignore: cast_nullable_to_non_nullable
              as int,
      teamMemberCount: null == teamMemberCount
          ? _value.teamMemberCount
          : teamMemberCount // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyTarget: null == monthlyTarget
          ? _value.monthlyTarget
          : monthlyTarget // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminPageUiStateImplCopyWith<$Res>
    implements $AdminPageUiStateCopyWith<$Res> {
  factory _$$AdminPageUiStateImplCopyWith(_$AdminPageUiStateImpl value,
          $Res Function(_$AdminPageUiStateImpl) then) =
      __$$AdminPageUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalTeamScreenTimes, int teamMemberCount, int monthlyTarget});
}

/// @nodoc
class __$$AdminPageUiStateImplCopyWithImpl<$Res>
    extends _$AdminPageUiStateCopyWithImpl<$Res, _$AdminPageUiStateImpl>
    implements _$$AdminPageUiStateImplCopyWith<$Res> {
  __$$AdminPageUiStateImplCopyWithImpl(_$AdminPageUiStateImpl _value,
      $Res Function(_$AdminPageUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTeamScreenTimes = null,
    Object? teamMemberCount = null,
    Object? monthlyTarget = null,
  }) {
    return _then(_$AdminPageUiStateImpl(
      totalTeamScreenTimes: null == totalTeamScreenTimes
          ? _value.totalTeamScreenTimes
          : totalTeamScreenTimes // ignore: cast_nullable_to_non_nullable
              as int,
      teamMemberCount: null == teamMemberCount
          ? _value.teamMemberCount
          : teamMemberCount // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyTarget: null == monthlyTarget
          ? _value.monthlyTarget
          : monthlyTarget // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AdminPageUiStateImpl extends _AdminPageUiState {
  const _$AdminPageUiStateImpl(
      {this.totalTeamScreenTimes = 1,
      this.teamMemberCount = 1,
      this.monthlyTarget = 1})
      : super._();

  @override
  @JsonKey()
  final int totalTeamScreenTimes;
  @override
  @JsonKey()
  final int teamMemberCount;
  @override
  @JsonKey()
  final int monthlyTarget;

  @override
  String toString() {
    return 'AdminPageUiState(totalTeamScreenTimes: $totalTeamScreenTimes, teamMemberCount: $teamMemberCount, monthlyTarget: $monthlyTarget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminPageUiStateImpl &&
            (identical(other.totalTeamScreenTimes, totalTeamScreenTimes) ||
                other.totalTeamScreenTimes == totalTeamScreenTimes) &&
            (identical(other.teamMemberCount, teamMemberCount) ||
                other.teamMemberCount == teamMemberCount) &&
            (identical(other.monthlyTarget, monthlyTarget) ||
                other.monthlyTarget == monthlyTarget));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalTeamScreenTimes, teamMemberCount, monthlyTarget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminPageUiStateImplCopyWith<_$AdminPageUiStateImpl> get copyWith =>
      __$$AdminPageUiStateImplCopyWithImpl<_$AdminPageUiStateImpl>(
          this, _$identity);
}

abstract class _AdminPageUiState extends AdminPageUiState {
  const factory _AdminPageUiState(
      {final int totalTeamScreenTimes,
      final int teamMemberCount,
      final int monthlyTarget}) = _$AdminPageUiStateImpl;
  const _AdminPageUiState._() : super._();

  @override
  int get totalTeamScreenTimes;
  @override
  int get teamMemberCount;
  @override
  int get monthlyTarget;
  @override
  @JsonKey(ignore: true)
  _$$AdminPageUiStateImplCopyWith<_$AdminPageUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
