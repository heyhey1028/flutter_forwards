// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_sum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSum _$UserSumFromJson(Map<String, dynamic> json) {
  return _UserSum.fromJson(json);
}

/// @nodoc
mixin _$UserSum {
// user_id
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError; // user_name
  @JsonKey(name: 'user_name', fromJson: _nameFromJson)
  String get userName => throw _privateConstructorUsedError; // user_icon_path
  @JsonKey(name: 'user_icon_path')
  String get userIconPath => throw _privateConstructorUsedError; // team_id
  @JsonKey(name: 'team_id')
  String get teamId => throw _privateConstructorUsedError; // monthly_target
  @JsonKey(name: 'monthly_target')
  int get monthlyTarget => throw _privateConstructorUsedError; // sum
  int get sum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSumCopyWith<UserSum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSumCopyWith<$Res> {
  factory $UserSumCopyWith(UserSum value, $Res Function(UserSum) then) =
      _$UserSumCopyWithImpl<$Res, UserSum>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_name', fromJson: _nameFromJson) String userName,
      @JsonKey(name: 'user_icon_path') String userIconPath,
      @JsonKey(name: 'team_id') String teamId,
      @JsonKey(name: 'monthly_target') int monthlyTarget,
      int sum});
}

/// @nodoc
class _$UserSumCopyWithImpl<$Res, $Val extends UserSum>
    implements $UserSumCopyWith<$Res> {
  _$UserSumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? userIconPath = null,
    Object? teamId = null,
    Object? monthlyTarget = null,
    Object? sum = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userIconPath: null == userIconPath
          ? _value.userIconPath
          : userIconPath // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyTarget: null == monthlyTarget
          ? _value.monthlyTarget
          : monthlyTarget // ignore: cast_nullable_to_non_nullable
              as int,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSumImplCopyWith<$Res> implements $UserSumCopyWith<$Res> {
  factory _$$UserSumImplCopyWith(
          _$UserSumImpl value, $Res Function(_$UserSumImpl) then) =
      __$$UserSumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_name', fromJson: _nameFromJson) String userName,
      @JsonKey(name: 'user_icon_path') String userIconPath,
      @JsonKey(name: 'team_id') String teamId,
      @JsonKey(name: 'monthly_target') int monthlyTarget,
      int sum});
}

/// @nodoc
class __$$UserSumImplCopyWithImpl<$Res>
    extends _$UserSumCopyWithImpl<$Res, _$UserSumImpl>
    implements _$$UserSumImplCopyWith<$Res> {
  __$$UserSumImplCopyWithImpl(
      _$UserSumImpl _value, $Res Function(_$UserSumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? userIconPath = null,
    Object? teamId = null,
    Object? monthlyTarget = null,
    Object? sum = null,
  }) {
    return _then(_$UserSumImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userIconPath: null == userIconPath
          ? _value.userIconPath
          : userIconPath // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyTarget: null == monthlyTarget
          ? _value.monthlyTarget
          : monthlyTarget // ignore: cast_nullable_to_non_nullable
              as int,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSumImpl implements _UserSum {
  _$UserSumImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'user_name', fromJson: _nameFromJson)
      required this.userName,
      @JsonKey(name: 'user_icon_path') required this.userIconPath,
      @JsonKey(name: 'team_id') required this.teamId,
      @JsonKey(name: 'monthly_target') required this.monthlyTarget,
      required this.sum});

  factory _$UserSumImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSumImplFromJson(json);

// user_id
  @override
  @JsonKey(name: 'user_id')
  final String userId;
// user_name
  @override
  @JsonKey(name: 'user_name', fromJson: _nameFromJson)
  final String userName;
// user_icon_path
  @override
  @JsonKey(name: 'user_icon_path')
  final String userIconPath;
// team_id
  @override
  @JsonKey(name: 'team_id')
  final String teamId;
// monthly_target
  @override
  @JsonKey(name: 'monthly_target')
  final int monthlyTarget;
// sum
  @override
  final int sum;

  @override
  String toString() {
    return 'UserSum(userId: $userId, userName: $userName, userIconPath: $userIconPath, teamId: $teamId, monthlyTarget: $monthlyTarget, sum: $sum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSumImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userIconPath, userIconPath) ||
                other.userIconPath == userIconPath) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.monthlyTarget, monthlyTarget) ||
                other.monthlyTarget == monthlyTarget) &&
            (identical(other.sum, sum) || other.sum == sum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, userName, userIconPath, teamId, monthlyTarget, sum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSumImplCopyWith<_$UserSumImpl> get copyWith =>
      __$$UserSumImplCopyWithImpl<_$UserSumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSumImplToJson(
      this,
    );
  }
}

abstract class _UserSum implements UserSum {
  factory _UserSum(
      {@JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'user_name', fromJson: _nameFromJson)
      required final String userName,
      @JsonKey(name: 'user_icon_path') required final String userIconPath,
      @JsonKey(name: 'team_id') required final String teamId,
      @JsonKey(name: 'monthly_target') required final int monthlyTarget,
      required final int sum}) = _$UserSumImpl;

  factory _UserSum.fromJson(Map<String, dynamic> json) = _$UserSumImpl.fromJson;

  @override // user_id
  @JsonKey(name: 'user_id')
  String get userId;
  @override // user_name
  @JsonKey(name: 'user_name', fromJson: _nameFromJson)
  String get userName;
  @override // user_icon_path
  @JsonKey(name: 'user_icon_path')
  String get userIconPath;
  @override // team_id
  @JsonKey(name: 'team_id')
  String get teamId;
  @override // monthly_target
  @JsonKey(name: 'monthly_target')
  int get monthlyTarget;
  @override // sum
  int get sum;
  @override
  @JsonKey(ignore: true)
  _$$UserSumImplCopyWith<_$UserSumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
