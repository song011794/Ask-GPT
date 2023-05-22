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

/// @nodoc
mixin _$MessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String errorMessage) eror,
    required TResult Function() sending,
    required TResult Function() loading,
    required TResult Function(Message message) relaying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String errorMessage)? eror,
    TResult? Function()? sending,
    TResult? Function()? loading,
    TResult? Function(Message message)? relaying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String errorMessage)? eror,
    TResult Function()? sending,
    TResult Function()? loading,
    TResult Function(Message message)? relaying,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) init,
    required TResult Function(MessagesLoaded value) loaded,
    required TResult Function(MessageError value) eror,
    required TResult Function(MessageSending value) sending,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageRelaying value) relaying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? init,
    TResult? Function(MessagesLoaded value)? loaded,
    TResult? Function(MessageError value)? eror,
    TResult? Function(MessageSending value)? sending,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageRelaying value)? relaying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? init,
    TResult Function(MessagesLoaded value)? loaded,
    TResult Function(MessageError value)? eror,
    TResult Function(MessageSending value)? sending,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageRelaying value)? relaying,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res, MessageState>;
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res, $Val extends MessageState>
    implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MessageInitialCopyWith<$Res> {
  factory _$$MessageInitialCopyWith(
          _$MessageInitial value, $Res Function(_$MessageInitial) then) =
      __$$MessageInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageInitialCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageInitial>
    implements _$$MessageInitialCopyWith<$Res> {
  __$$MessageInitialCopyWithImpl(
      _$MessageInitial _value, $Res Function(_$MessageInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MessageInitial implements MessageInitial {
  const _$MessageInitial();

  @override
  String toString() {
    return 'MessageState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String errorMessage) eror,
    required TResult Function() sending,
    required TResult Function() loading,
    required TResult Function(Message message) relaying,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String errorMessage)? eror,
    TResult? Function()? sending,
    TResult? Function()? loading,
    TResult? Function(Message message)? relaying,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String errorMessage)? eror,
    TResult Function()? sending,
    TResult Function()? loading,
    TResult Function(Message message)? relaying,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) init,
    required TResult Function(MessagesLoaded value) loaded,
    required TResult Function(MessageError value) eror,
    required TResult Function(MessageSending value) sending,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageRelaying value) relaying,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? init,
    TResult? Function(MessagesLoaded value)? loaded,
    TResult? Function(MessageError value)? eror,
    TResult? Function(MessageSending value)? sending,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageRelaying value)? relaying,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? init,
    TResult Function(MessagesLoaded value)? loaded,
    TResult Function(MessageError value)? eror,
    TResult Function(MessageSending value)? sending,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageRelaying value)? relaying,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class MessageInitial implements MessageState {
  const factory MessageInitial() = _$MessageInitial;
}

/// @nodoc
abstract class _$$MessagesLoadedCopyWith<$Res> {
  factory _$$MessagesLoadedCopyWith(
          _$MessagesLoaded value, $Res Function(_$MessagesLoaded) then) =
      __$$MessagesLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$MessagesLoadedCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessagesLoaded>
    implements _$$MessagesLoadedCopyWith<$Res> {
  __$$MessagesLoadedCopyWithImpl(
      _$MessagesLoaded _value, $Res Function(_$MessagesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$MessagesLoaded(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$MessagesLoaded implements MessagesLoaded {
  const _$MessagesLoaded(final List<Message> messages) : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'MessageState.loaded(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesLoaded &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesLoadedCopyWith<_$MessagesLoaded> get copyWith =>
      __$$MessagesLoadedCopyWithImpl<_$MessagesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String errorMessage) eror,
    required TResult Function() sending,
    required TResult Function() loading,
    required TResult Function(Message message) relaying,
  }) {
    return loaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String errorMessage)? eror,
    TResult? Function()? sending,
    TResult? Function()? loading,
    TResult? Function(Message message)? relaying,
  }) {
    return loaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String errorMessage)? eror,
    TResult Function()? sending,
    TResult Function()? loading,
    TResult Function(Message message)? relaying,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) init,
    required TResult Function(MessagesLoaded value) loaded,
    required TResult Function(MessageError value) eror,
    required TResult Function(MessageSending value) sending,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageRelaying value) relaying,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? init,
    TResult? Function(MessagesLoaded value)? loaded,
    TResult? Function(MessageError value)? eror,
    TResult? Function(MessageSending value)? sending,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageRelaying value)? relaying,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? init,
    TResult Function(MessagesLoaded value)? loaded,
    TResult Function(MessageError value)? eror,
    TResult Function(MessageSending value)? sending,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageRelaying value)? relaying,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MessagesLoaded implements MessageState {
  const factory MessagesLoaded(final List<Message> messages) = _$MessagesLoaded;

  List<Message> get messages;
  @JsonKey(ignore: true)
  _$$MessagesLoadedCopyWith<_$MessagesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageErrorCopyWith<$Res> {
  factory _$$MessageErrorCopyWith(
          _$MessageError value, $Res Function(_$MessageError) then) =
      __$$MessageErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$MessageErrorCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageError>
    implements _$$MessageErrorCopyWith<$Res> {
  __$$MessageErrorCopyWithImpl(
      _$MessageError _value, $Res Function(_$MessageError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$MessageError(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageError implements MessageError {
  const _$MessageError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'MessageState.eror(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageErrorCopyWith<_$MessageError> get copyWith =>
      __$$MessageErrorCopyWithImpl<_$MessageError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String errorMessage) eror,
    required TResult Function() sending,
    required TResult Function() loading,
    required TResult Function(Message message) relaying,
  }) {
    return eror(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String errorMessage)? eror,
    TResult? Function()? sending,
    TResult? Function()? loading,
    TResult? Function(Message message)? relaying,
  }) {
    return eror?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String errorMessage)? eror,
    TResult Function()? sending,
    TResult Function()? loading,
    TResult Function(Message message)? relaying,
    required TResult orElse(),
  }) {
    if (eror != null) {
      return eror(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) init,
    required TResult Function(MessagesLoaded value) loaded,
    required TResult Function(MessageError value) eror,
    required TResult Function(MessageSending value) sending,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageRelaying value) relaying,
  }) {
    return eror(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? init,
    TResult? Function(MessagesLoaded value)? loaded,
    TResult? Function(MessageError value)? eror,
    TResult? Function(MessageSending value)? sending,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageRelaying value)? relaying,
  }) {
    return eror?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? init,
    TResult Function(MessagesLoaded value)? loaded,
    TResult Function(MessageError value)? eror,
    TResult Function(MessageSending value)? sending,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageRelaying value)? relaying,
    required TResult orElse(),
  }) {
    if (eror != null) {
      return eror(this);
    }
    return orElse();
  }
}

abstract class MessageError implements MessageState {
  const factory MessageError(final String errorMessage) = _$MessageError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$MessageErrorCopyWith<_$MessageError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageSendingCopyWith<$Res> {
  factory _$$MessageSendingCopyWith(
          _$MessageSending value, $Res Function(_$MessageSending) then) =
      __$$MessageSendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageSendingCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageSending>
    implements _$$MessageSendingCopyWith<$Res> {
  __$$MessageSendingCopyWithImpl(
      _$MessageSending _value, $Res Function(_$MessageSending) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MessageSending implements MessageSending {
  const _$MessageSending();

  @override
  String toString() {
    return 'MessageState.sending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageSending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String errorMessage) eror,
    required TResult Function() sending,
    required TResult Function() loading,
    required TResult Function(Message message) relaying,
  }) {
    return sending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String errorMessage)? eror,
    TResult? Function()? sending,
    TResult? Function()? loading,
    TResult? Function(Message message)? relaying,
  }) {
    return sending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String errorMessage)? eror,
    TResult Function()? sending,
    TResult Function()? loading,
    TResult Function(Message message)? relaying,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) init,
    required TResult Function(MessagesLoaded value) loaded,
    required TResult Function(MessageError value) eror,
    required TResult Function(MessageSending value) sending,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageRelaying value) relaying,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? init,
    TResult? Function(MessagesLoaded value)? loaded,
    TResult? Function(MessageError value)? eror,
    TResult? Function(MessageSending value)? sending,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageRelaying value)? relaying,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? init,
    TResult Function(MessagesLoaded value)? loaded,
    TResult Function(MessageError value)? eror,
    TResult Function(MessageSending value)? sending,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageRelaying value)? relaying,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class MessageSending implements MessageState {
  const factory MessageSending() = _$MessageSending;
}

/// @nodoc
abstract class _$$MessageLoadingCopyWith<$Res> {
  factory _$$MessageLoadingCopyWith(
          _$MessageLoading value, $Res Function(_$MessageLoading) then) =
      __$$MessageLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageLoadingCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageLoading>
    implements _$$MessageLoadingCopyWith<$Res> {
  __$$MessageLoadingCopyWithImpl(
      _$MessageLoading _value, $Res Function(_$MessageLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MessageLoading implements MessageLoading {
  const _$MessageLoading();

  @override
  String toString() {
    return 'MessageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String errorMessage) eror,
    required TResult Function() sending,
    required TResult Function() loading,
    required TResult Function(Message message) relaying,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String errorMessage)? eror,
    TResult? Function()? sending,
    TResult? Function()? loading,
    TResult? Function(Message message)? relaying,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String errorMessage)? eror,
    TResult Function()? sending,
    TResult Function()? loading,
    TResult Function(Message message)? relaying,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) init,
    required TResult Function(MessagesLoaded value) loaded,
    required TResult Function(MessageError value) eror,
    required TResult Function(MessageSending value) sending,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageRelaying value) relaying,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? init,
    TResult? Function(MessagesLoaded value)? loaded,
    TResult? Function(MessageError value)? eror,
    TResult? Function(MessageSending value)? sending,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageRelaying value)? relaying,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? init,
    TResult Function(MessagesLoaded value)? loaded,
    TResult Function(MessageError value)? eror,
    TResult Function(MessageSending value)? sending,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageRelaying value)? relaying,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MessageLoading implements MessageState {
  const factory MessageLoading() = _$MessageLoading;
}

/// @nodoc
abstract class _$$MessageRelayingCopyWith<$Res> {
  factory _$$MessageRelayingCopyWith(
          _$MessageRelaying value, $Res Function(_$MessageRelaying) then) =
      __$$MessageRelayingCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message});
}

/// @nodoc
class __$$MessageRelayingCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageRelaying>
    implements _$$MessageRelayingCopyWith<$Res> {
  __$$MessageRelayingCopyWithImpl(
      _$MessageRelaying _value, $Res Function(_$MessageRelaying) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageRelaying(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$MessageRelaying implements MessageRelaying {
  const _$MessageRelaying(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'MessageState.relaying(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageRelaying &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageRelayingCopyWith<_$MessageRelaying> get copyWith =>
      __$$MessageRelayingCopyWithImpl<_$MessageRelaying>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String errorMessage) eror,
    required TResult Function() sending,
    required TResult Function() loading,
    required TResult Function(Message message) relaying,
  }) {
    return relaying(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String errorMessage)? eror,
    TResult? Function()? sending,
    TResult? Function()? loading,
    TResult? Function(Message message)? relaying,
  }) {
    return relaying?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String errorMessage)? eror,
    TResult Function()? sending,
    TResult Function()? loading,
    TResult Function(Message message)? relaying,
    required TResult orElse(),
  }) {
    if (relaying != null) {
      return relaying(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) init,
    required TResult Function(MessagesLoaded value) loaded,
    required TResult Function(MessageError value) eror,
    required TResult Function(MessageSending value) sending,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageRelaying value) relaying,
  }) {
    return relaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? init,
    TResult? Function(MessagesLoaded value)? loaded,
    TResult? Function(MessageError value)? eror,
    TResult? Function(MessageSending value)? sending,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageRelaying value)? relaying,
  }) {
    return relaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? init,
    TResult Function(MessagesLoaded value)? loaded,
    TResult Function(MessageError value)? eror,
    TResult Function(MessageSending value)? sending,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageRelaying value)? relaying,
    required TResult orElse(),
  }) {
    if (relaying != null) {
      return relaying(this);
    }
    return orElse();
  }
}

abstract class MessageRelaying implements MessageState {
  const factory MessageRelaying(final Message message) = _$MessageRelaying;

  Message get message;
  @JsonKey(ignore: true)
  _$$MessageRelayingCopyWith<_$MessageRelaying> get copyWith =>
      throw _privateConstructorUsedError;
}
