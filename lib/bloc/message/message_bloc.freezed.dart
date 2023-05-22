// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) send,
    required TResult Function(Message message) delete,
    required TResult Function(String conversationUUid) loadAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Message message)? send,
    TResult? Function(Message message)? delete,
    TResult? Function(String conversationUUid)? loadAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? send,
    TResult Function(Message message)? delete,
    TResult Function(String conversationUUid)? loadAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageEvent value) send,
    required TResult Function(DeleteMessageEvent value) delete,
    required TResult Function(LoadAllMessagesEvent value) loadAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageEvent value)? send,
    TResult? Function(DeleteMessageEvent value)? delete,
    TResult? Function(LoadAllMessagesEvent value)? loadAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageEvent value)? send,
    TResult Function(DeleteMessageEvent value)? delete,
    TResult Function(LoadAllMessagesEvent value)? loadAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res, MessageEvent>;
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res, $Val extends MessageEvent>
    implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendMessageEventCopyWith<$Res> {
  factory _$$SendMessageEventCopyWith(
          _$SendMessageEvent value, $Res Function(_$SendMessageEvent) then) =
      __$$SendMessageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message});
}

/// @nodoc
class __$$SendMessageEventCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$SendMessageEvent>
    implements _$$SendMessageEventCopyWith<$Res> {
  __$$SendMessageEventCopyWithImpl(
      _$SendMessageEvent _value, $Res Function(_$SendMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendMessageEvent(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$SendMessageEvent implements SendMessageEvent {
  const _$SendMessageEvent(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'MessageEvent.send(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageEvent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageEventCopyWith<_$SendMessageEvent> get copyWith =>
      __$$SendMessageEventCopyWithImpl<_$SendMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) send,
    required TResult Function(Message message) delete,
    required TResult Function(String conversationUUid) loadAll,
  }) {
    return send(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Message message)? send,
    TResult? Function(Message message)? delete,
    TResult? Function(String conversationUUid)? loadAll,
  }) {
    return send?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? send,
    TResult Function(Message message)? delete,
    TResult Function(String conversationUUid)? loadAll,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageEvent value) send,
    required TResult Function(DeleteMessageEvent value) delete,
    required TResult Function(LoadAllMessagesEvent value) loadAll,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageEvent value)? send,
    TResult? Function(DeleteMessageEvent value)? delete,
    TResult? Function(LoadAllMessagesEvent value)? loadAll,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageEvent value)? send,
    TResult Function(DeleteMessageEvent value)? delete,
    TResult Function(LoadAllMessagesEvent value)? loadAll,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class SendMessageEvent implements MessageEvent {
  const factory SendMessageEvent(final Message message) = _$SendMessageEvent;

  Message get message;
  @JsonKey(ignore: true)
  _$$SendMessageEventCopyWith<_$SendMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMessageEventCopyWith<$Res> {
  factory _$$DeleteMessageEventCopyWith(_$DeleteMessageEvent value,
          $Res Function(_$DeleteMessageEvent) then) =
      __$$DeleteMessageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message});
}

/// @nodoc
class __$$DeleteMessageEventCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$DeleteMessageEvent>
    implements _$$DeleteMessageEventCopyWith<$Res> {
  __$$DeleteMessageEventCopyWithImpl(
      _$DeleteMessageEvent _value, $Res Function(_$DeleteMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteMessageEvent(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$DeleteMessageEvent implements DeleteMessageEvent {
  const _$DeleteMessageEvent(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'MessageEvent.delete(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageEvent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageEventCopyWith<_$DeleteMessageEvent> get copyWith =>
      __$$DeleteMessageEventCopyWithImpl<_$DeleteMessageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) send,
    required TResult Function(Message message) delete,
    required TResult Function(String conversationUUid) loadAll,
  }) {
    return delete(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Message message)? send,
    TResult? Function(Message message)? delete,
    TResult? Function(String conversationUUid)? loadAll,
  }) {
    return delete?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? send,
    TResult Function(Message message)? delete,
    TResult Function(String conversationUUid)? loadAll,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageEvent value) send,
    required TResult Function(DeleteMessageEvent value) delete,
    required TResult Function(LoadAllMessagesEvent value) loadAll,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageEvent value)? send,
    TResult? Function(DeleteMessageEvent value)? delete,
    TResult? Function(LoadAllMessagesEvent value)? loadAll,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageEvent value)? send,
    TResult Function(DeleteMessageEvent value)? delete,
    TResult Function(LoadAllMessagesEvent value)? loadAll,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteMessageEvent implements MessageEvent {
  const factory DeleteMessageEvent(final Message message) =
      _$DeleteMessageEvent;

  Message get message;
  @JsonKey(ignore: true)
  _$$DeleteMessageEventCopyWith<_$DeleteMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAllMessagesEventCopyWith<$Res> {
  factory _$$LoadAllMessagesEventCopyWith(_$LoadAllMessagesEvent value,
          $Res Function(_$LoadAllMessagesEvent) then) =
      __$$LoadAllMessagesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationUUid});
}

/// @nodoc
class __$$LoadAllMessagesEventCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$LoadAllMessagesEvent>
    implements _$$LoadAllMessagesEventCopyWith<$Res> {
  __$$LoadAllMessagesEventCopyWithImpl(_$LoadAllMessagesEvent _value,
      $Res Function(_$LoadAllMessagesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationUUid = null,
  }) {
    return _then(_$LoadAllMessagesEvent(
      null == conversationUUid
          ? _value.conversationUUid
          : conversationUUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadAllMessagesEvent implements LoadAllMessagesEvent {
  const _$LoadAllMessagesEvent(this.conversationUUid);

  @override
  final String conversationUUid;

  @override
  String toString() {
    return 'MessageEvent.loadAll(conversationUUid: $conversationUUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllMessagesEvent &&
            (identical(other.conversationUUid, conversationUUid) ||
                other.conversationUUid == conversationUUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationUUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAllMessagesEventCopyWith<_$LoadAllMessagesEvent> get copyWith =>
      __$$LoadAllMessagesEventCopyWithImpl<_$LoadAllMessagesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) send,
    required TResult Function(Message message) delete,
    required TResult Function(String conversationUUid) loadAll,
  }) {
    return loadAll(conversationUUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Message message)? send,
    TResult? Function(Message message)? delete,
    TResult? Function(String conversationUUid)? loadAll,
  }) {
    return loadAll?.call(conversationUUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? send,
    TResult Function(Message message)? delete,
    TResult Function(String conversationUUid)? loadAll,
    required TResult orElse(),
  }) {
    if (loadAll != null) {
      return loadAll(conversationUUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageEvent value) send,
    required TResult Function(DeleteMessageEvent value) delete,
    required TResult Function(LoadAllMessagesEvent value) loadAll,
  }) {
    return loadAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageEvent value)? send,
    TResult? Function(DeleteMessageEvent value)? delete,
    TResult? Function(LoadAllMessagesEvent value)? loadAll,
  }) {
    return loadAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageEvent value)? send,
    TResult Function(DeleteMessageEvent value)? delete,
    TResult Function(LoadAllMessagesEvent value)? loadAll,
    required TResult orElse(),
  }) {
    if (loadAll != null) {
      return loadAll(this);
    }
    return orElse();
  }
}

abstract class LoadAllMessagesEvent implements MessageEvent {
  const factory LoadAllMessagesEvent(final String conversationUUid) =
      _$LoadAllMessagesEvent;

  String get conversationUUid;
  @JsonKey(ignore: true)
  _$$LoadAllMessagesEventCopyWith<_$LoadAllMessagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
