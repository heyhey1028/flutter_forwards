// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_sum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TotalSum _$TotalSumFromJson(Map<String, dynamic> json) {
  return _TotalSum.fromJson(json);
}

/// @nodoc
mixin _$TotalSum {
  @JsonKey(name: "total_team_screen_times")
  int get totalTeamScreenTimes => throw _privateConstructorUsedError;
  @JsonKey(name: "team_member_count")
  int get teamMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "monthly_target")
  int get monthlyTarget => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalSumCopyWith<TotalSum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalSumCopyWith<$Res> {
  factory $TotalSumCopyWith(TotalSum value, $Res Function(TotalSum) then) =
      _$TotalSumCopyWithImpl<$Res, TotalSum>;
  @useResult
  $Res call(
      {@JsonKey(name: "total_team_screen_times") int totalTeamScreenTimes,
      @JsonKey(name: "team_member_count") int teamMemberCount,
      @JsonKey(name: "monthly_target") int monthlyTarget});
}

/// @nodoc
class _$TotalSumCopyWithImpl<$Res, $Val extends TotalSum>
    implements $TotalSumCopyWith<$Res> {
  _$TotalSumCopyWithImpl(this._value, this._then);

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
abstract class _$$TotalSumImplCopyWith<$Res>
    implements $TotalSumCopyWith<$Res> {
  factory _$$TotalSumImplCopyWith(
          _$TotalSumImpl value, $Res Function(_$TotalSumImpl) then) =
      __$$TotalSumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_team_screen_times") int totalTeamScreenTimes,
      @JsonKey(name: "team_member_count") int teamMemberCount,
      @JsonKey(name: "monthly_target") int monthlyTarget});
}

/// @nodoc
class __$$TotalSumImplCopyWithImpl<$Res>
    extends _$TotalSumCopyWithImpl<$Res, _$TotalSumImpl>
    implements _$$TotalSumImplCopyWith<$Res> {
  __$$TotalSumImplCopyWithImpl(
      _$TotalSumImpl _value, $Res Function(_$TotalSumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTeamScreenTimes = null,
    Object? teamMemberCount = null,
    Object? monthlyTarget = null,
  }) {
    return _then(_$TotalSumImpl(
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
@JsonSerializable()
class _$TotalSumImpl implements _TotalSum {
  _$TotalSumImpl(
      {@JsonKey(name: "total_team_screen_times")
      required this.totalTeamScreenTimes,
      @JsonKey(name: "team_member_count") required this.teamMemberCount,
      @JsonKey(name: "monthly_target") required this.monthlyTarget});

  factory _$TotalSumImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalSumImplFromJson(json);

  @override
  @JsonKey(name: "total_team_screen_times")
  final int totalTeamScreenTimes;
  @override
  @JsonKey(name: "team_member_count")
  final int teamMemberCount;
  @override
  @JsonKey(name: "monthly_target")
  final int monthlyTarget;

  @override
  String toString() {
    return 'TotalSum(totalTeamScreenTimes: $totalTeamScreenTimes, teamMemberCount: $teamMemberCount, monthlyTarget: $monthlyTarget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalSumImpl &&
            (identical(other.totalTeamScreenTimes, totalTeamScreenTimes) ||
                other.totalTeamScreenTimes == totalTeamScreenTimes) &&
            (identical(other.teamMemberCount, teamMemberCount) ||
                other.teamMemberCount == teamMemberCount) &&
            (identical(other.monthlyTarget, monthlyTarget) ||
                other.monthlyTarget == monthlyTarget));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalTeamScreenTimes, teamMemberCount, monthlyTarget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalSumImplCopyWith<_$TotalSumImpl> get copyWith =>
      __$$TotalSumImplCopyWithImpl<_$TotalSumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalSumImplToJson(
      this,
    );
  }
}

abstract class _TotalSum implements TotalSum {
  factory _TotalSum(
      {@JsonKey(name: "total_team_screen_times")
      required final int totalTeamScreenTimes,
      @JsonKey(name: "team_member_count") required final int teamMemberCount,
      @JsonKey(name: "monthly_target")
      required final int monthlyTarget}) = _$TotalSumImpl;

  factory _TotalSum.fromJson(Map<String, dynamic> json) =
      _$TotalSumImpl.fromJson;

  @override
  @JsonKey(name: "total_team_screen_times")
  int get totalTeamScreenTimes;
  @override
  @JsonKey(name: "team_member_count")
  int get teamMemberCount;
  @override
  @JsonKey(name: "monthly_target")
  int get monthlyTarget;
  @override
  @JsonKey(ignore: true)
  _$$TotalSumImplCopyWith<_$TotalSumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
