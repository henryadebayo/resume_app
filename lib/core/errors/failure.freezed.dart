// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) client,
    required TResult Function(String message) timeout,
    required TResult Function(String message) generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? client,
    TResult? Function(String message)? timeout,
    TResult? Function(String message)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) server,
    required TResult Function(ClientError value) client,
    required TResult Function(TimeOutError value) timeout,
    required TResult Function(GenericError value) generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? server,
    TResult? Function(ClientError value)? client,
    TResult? Function(TimeOutError value)? timeout,
    TResult? Function(GenericError value)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerError extends ServerError {
  const _$ServerError({this.message = 'Something went wrong.'}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      __$$ServerErrorCopyWithImpl<_$ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) client,
    required TResult Function(String message) timeout,
    required TResult Function(String message) generic,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? client,
    TResult? Function(String message)? timeout,
    TResult? Function(String message)? generic,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) server,
    required TResult Function(ClientError value) client,
    required TResult Function(TimeOutError value) timeout,
    required TResult Function(GenericError value) generic,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? server,
    TResult? Function(ClientError value)? client,
    TResult? Function(TimeOutError value)? timeout,
    TResult? Function(GenericError value)? generic,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerError extends Failure {
  const factory ServerError({final String message}) = _$ServerError;
  const ServerError._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientErrorCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$ClientErrorCopyWith(
          _$ClientError value, $Res Function(_$ClientError) then) =
      __$$ClientErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ClientErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ClientError>
    implements _$$ClientErrorCopyWith<$Res> {
  __$$ClientErrorCopyWithImpl(
      _$ClientError _value, $Res Function(_$ClientError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ClientError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientError extends ClientError {
  const _$ClientError({this.message = 'Something went wrong.'}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.client(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientErrorCopyWith<_$ClientError> get copyWith =>
      __$$ClientErrorCopyWithImpl<_$ClientError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) client,
    required TResult Function(String message) timeout,
    required TResult Function(String message) generic,
  }) {
    return client(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? client,
    TResult? Function(String message)? timeout,
    TResult? Function(String message)? generic,
  }) {
    return client?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) server,
    required TResult Function(ClientError value) client,
    required TResult Function(TimeOutError value) timeout,
    required TResult Function(GenericError value) generic,
  }) {
    return client(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? server,
    TResult? Function(ClientError value)? client,
    TResult? Function(TimeOutError value)? timeout,
    TResult? Function(GenericError value)? generic,
  }) {
    return client?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client(this);
    }
    return orElse();
  }
}

abstract class ClientError extends Failure {
  const factory ClientError({final String message}) = _$ClientError;
  const ClientError._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ClientErrorCopyWith<_$ClientError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeOutErrorCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$TimeOutErrorCopyWith(
          _$TimeOutError value, $Res Function(_$TimeOutError) then) =
      __$$TimeOutErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TimeOutErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$TimeOutError>
    implements _$$TimeOutErrorCopyWith<$Res> {
  __$$TimeOutErrorCopyWithImpl(
      _$TimeOutError _value, $Res Function(_$TimeOutError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TimeOutError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimeOutError extends TimeOutError {
  const _$TimeOutError({this.message = 'The request timed out.'}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.timeout(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeOutError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeOutErrorCopyWith<_$TimeOutError> get copyWith =>
      __$$TimeOutErrorCopyWithImpl<_$TimeOutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) client,
    required TResult Function(String message) timeout,
    required TResult Function(String message) generic,
  }) {
    return timeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? client,
    TResult? Function(String message)? timeout,
    TResult? Function(String message)? generic,
  }) {
    return timeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) server,
    required TResult Function(ClientError value) client,
    required TResult Function(TimeOutError value) timeout,
    required TResult Function(GenericError value) generic,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? server,
    TResult? Function(ClientError value)? client,
    TResult? Function(TimeOutError value)? timeout,
    TResult? Function(GenericError value)? generic,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class TimeOutError extends Failure {
  const factory TimeOutError({final String message}) = _$TimeOutError;
  const TimeOutError._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$TimeOutErrorCopyWith<_$TimeOutError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericErrorCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$GenericErrorCopyWith(
          _$GenericError value, $Res Function(_$GenericError) then) =
      __$$GenericErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GenericErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$GenericError>
    implements _$$GenericErrorCopyWith<$Res> {
  __$$GenericErrorCopyWithImpl(
      _$GenericError _value, $Res Function(_$GenericError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GenericError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenericError extends GenericError {
  const _$GenericError({this.message = 'Something went wrong.'}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.generic(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericErrorCopyWith<_$GenericError> get copyWith =>
      __$$GenericErrorCopyWithImpl<_$GenericError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) client,
    required TResult Function(String message) timeout,
    required TResult Function(String message) generic,
  }) {
    return generic(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? client,
    TResult? Function(String message)? timeout,
    TResult? Function(String message)? generic,
  }) {
    return generic?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) server,
    required TResult Function(ClientError value) client,
    required TResult Function(TimeOutError value) timeout,
    required TResult Function(GenericError value) generic,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? server,
    TResult? Function(ClientError value)? client,
    TResult? Function(TimeOutError value)? timeout,
    TResult? Function(GenericError value)? generic,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }
}

abstract class GenericError extends Failure {
  const factory GenericError({final String message}) = _$GenericError;
  const GenericError._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$GenericErrorCopyWith<_$GenericError> get copyWith =>
      throw _privateConstructorUsedError;
}
