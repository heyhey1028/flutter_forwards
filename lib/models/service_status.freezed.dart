// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceStatus _$ServiceStatusFromJson(Map<String, dynamic> json) {
  return _ServiceStatus.fromJson(json);
}

/// @nodoc
mixin _$ServiceStatus {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name', fromJson: _nameFromJson)
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_id')
  String get teamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_target')
  int get monthlyTarget => throw _privateConstructorUsedError;
  int get sum => throw _privateConstructorUsedError; // service_id
  @JsonKey(name: 'service_id')
  String get serviceId => throw _privateConstructorUsedError; // service_name
  @JsonKey(name: 'service_name')
  String get serviceName => throw _privateConstructorUsedError; // icon_path
  @JsonKey(name: 'icon_path')
  String get iconPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceStatusCopyWith<ServiceStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceStatusCopyWith<$Res> {
  factory $ServiceStatusCopyWith(
          ServiceStatus value, $Res Function(ServiceStatus) then) =
      _$ServiceStatusCopyWithImpl<$Res, ServiceStatus>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_name', fromJson: _nameFromJson) String userName,
      @JsonKey(name: 'team_id') String teamId,
      @JsonKey(name: 'monthly_target') int monthlyTarget,
      int sum,
      @JsonKey(name: 'service_id') String serviceId,
      @JsonKey(name: 'service_name') String serviceName,
      @JsonKey(name: 'icon_path') String iconPath});
}

/// @nodoc
class _$ServiceStatusCopyWithImpl<$Res, $Val extends ServiceStatus>
    implements $ServiceStatusCopyWith<$Res> {
  _$ServiceStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? teamId = null,
    Object? monthlyTarget = null,
    Object? sum = null,
    Object? serviceId = null,
    Object? serviceName = null,
    Object? iconPath = null,
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
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceStatusImplCopyWith<$Res>
    implements $ServiceStatusCopyWith<$Res> {
  factory _$$ServiceStatusImplCopyWith(
          _$ServiceStatusImpl value, $Res Function(_$ServiceStatusImpl) then) =
      __$$ServiceStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_name', fromJson: _nameFromJson) String userName,
      @JsonKey(name: 'team_id') String teamId,
      @JsonKey(name: 'monthly_target') int monthlyTarget,
      int sum,
      @JsonKey(name: 'service_id') String serviceId,
      @JsonKey(name: 'service_name') String serviceName,
      @JsonKey(name: 'icon_path') String iconPath});
}

/// @nodoc
class __$$ServiceStatusImplCopyWithImpl<$Res>
    extends _$ServiceStatusCopyWithImpl<$Res, _$ServiceStatusImpl>
    implements _$$ServiceStatusImplCopyWith<$Res> {
  __$$ServiceStatusImplCopyWithImpl(
      _$ServiceStatusImpl _value, $Res Function(_$ServiceStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? teamId = null,
    Object? monthlyTarget = null,
    Object? sum = null,
    Object? serviceId = null,
    Object? serviceName = null,
    Object? iconPath = null,
  }) {
    return _then(_$ServiceStatusImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceStatusImpl implements _ServiceStatus {
  _$ServiceStatusImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'user_name', fromJson: _nameFromJson)
      required this.userName,
      @JsonKey(name: 'team_id') required this.teamId,
      @JsonKey(name: 'monthly_target') required this.monthlyTarget,
      required this.sum,
      @JsonKey(name: 'service_id') required this.serviceId,
      @JsonKey(name: 'service_name') required this.serviceName,
      @JsonKey(name: 'icon_path') required this.iconPath});

  factory _$ServiceStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceStatusImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'user_name', fromJson: _nameFromJson)
  final String userName;
  @override
  @JsonKey(name: 'team_id')
  final String teamId;
  @override
  @JsonKey(name: 'monthly_target')
  final int monthlyTarget;
  @override
  final int sum;
// service_id
  @override
  @JsonKey(name: 'service_id')
  final String serviceId;
// service_name
  @override
  @JsonKey(name: 'service_name')
  final String serviceName;
// icon_path
  @override
  @JsonKey(name: 'icon_path')
  final String iconPath;

  @override
  String toString() {
    return 'ServiceStatus(userId: $userId, userName: $userName, teamId: $teamId, monthlyTarget: $monthlyTarget, sum: $sum, serviceId: $serviceId, serviceName: $serviceName, iconPath: $iconPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceStatusImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.monthlyTarget, monthlyTarget) ||
                other.monthlyTarget == monthlyTarget) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, userName, teamId,
      monthlyTarget, sum, serviceId, serviceName, iconPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceStatusImplCopyWith<_$ServiceStatusImpl> get copyWith =>
      __$$ServiceStatusImplCopyWithImpl<_$ServiceStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceStatusImplToJson(
      this,
    );
  }
}

abstract class _ServiceStatus implements ServiceStatus {
  factory _ServiceStatus(
          {@JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'user_name', fromJson: _nameFromJson)
          required final String userName,
          @JsonKey(name: 'team_id') required final String teamId,
          @JsonKey(name: 'monthly_target') required final int monthlyTarget,
          required final int sum,
          @JsonKey(name: 'service_id') required final String serviceId,
          @JsonKey(name: 'service_name') required final String serviceName,
          @JsonKey(name: 'icon_path') required final String iconPath}) =
      _$ServiceStatusImpl;

  factory _ServiceStatus.fromJson(Map<String, dynamic> json) =
      _$ServiceStatusImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'user_name', fromJson: _nameFromJson)
  String get userName;
  @override
  @JsonKey(name: 'team_id')
  String get teamId;
  @override
  @JsonKey(name: 'monthly_target')
  int get monthlyTarget;
  @override
  int get sum;
  @override // service_id
  @JsonKey(name: 'service_id')
  String get serviceId;
  @override // service_name
  @JsonKey(name: 'service_name')
  String get serviceName;
  @override // icon_path
  @JsonKey(name: 'icon_path')
  String get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$ServiceStatusImplCopyWith<_$ServiceStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
