// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gitHub_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubDataRequest _$GitHubDataRequestFromJson(Map<String, dynamic> json) {
  return _GitHubDataRequest.fromJson(json);
}

/// @nodoc
mixin _$GitHubDataRequest {
  String? get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubDataRequestCopyWith<GitHubDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubDataRequestCopyWith<$Res> {
  factory $GitHubDataRequestCopyWith(
          GitHubDataRequest value, $Res Function(GitHubDataRequest) then) =
      _$GitHubDataRequestCopyWithImpl<$Res, GitHubDataRequest>;
  @useResult
  $Res call({String? userName});
}

/// @nodoc
class _$GitHubDataRequestCopyWithImpl<$Res, $Val extends GitHubDataRequest>
    implements $GitHubDataRequestCopyWith<$Res> {
  _$GitHubDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubDataRequestCopyWith<$Res>
    implements $GitHubDataRequestCopyWith<$Res> {
  factory _$$_GitHubDataRequestCopyWith(_$_GitHubDataRequest value,
          $Res Function(_$_GitHubDataRequest) then) =
      __$$_GitHubDataRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userName});
}

/// @nodoc
class __$$_GitHubDataRequestCopyWithImpl<$Res>
    extends _$GitHubDataRequestCopyWithImpl<$Res, _$_GitHubDataRequest>
    implements _$$_GitHubDataRequestCopyWith<$Res> {
  __$$_GitHubDataRequestCopyWithImpl(
      _$_GitHubDataRequest _value, $Res Function(_$_GitHubDataRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_$_GitHubDataRequest(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubDataRequest implements _GitHubDataRequest {
  const _$_GitHubDataRequest({this.userName});

  factory _$_GitHubDataRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubDataRequestFromJson(json);

  @override
  final String? userName;

  @override
  String toString() {
    return 'GitHubDataRequest(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubDataRequest &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubDataRequestCopyWith<_$_GitHubDataRequest> get copyWith =>
      __$$_GitHubDataRequestCopyWithImpl<_$_GitHubDataRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubDataRequestToJson(
      this,
    );
  }
}

abstract class _GitHubDataRequest implements GitHubDataRequest {
  const factory _GitHubDataRequest({final String? userName}) =
      _$_GitHubDataRequest;

  factory _GitHubDataRequest.fromJson(Map<String, dynamic> json) =
      _$_GitHubDataRequest.fromJson;

  @override
  String? get userName;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubDataRequestCopyWith<_$_GitHubDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
