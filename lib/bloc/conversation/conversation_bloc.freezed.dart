// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Conversation conversation) add,
    required TResult Function(Conversation conversation) delete,
    required TResult Function() load,
    required TResult Function(Conversation conversation) update,
    required TResult Function(String conversationUUid) choose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Conversation conversation)? add,
    TResult? Function(Conversation conversation)? delete,
    TResult? Function()? load,
    TResult? Function(Conversation conversation)? update,
    TResult? Function(String conversationUUid)? choose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Conversation conversation)? add,
    TResult Function(Conversation conversation)? delete,
    TResult Function()? load,
    TResult Function(Conversation conversation)? update,
    TResult Function(String conversationUUid)? choose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddConversationEvent value) add,
    required TResult Function(DeleteConversationEvent value) delete,
    required TResult Function(LoadConversationsEvent value) load,
    required TResult Function(UpdateConversationEvent value) update,
    required TResult Function(ChooseConversationEvent value) choose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddConversationEvent value)? add,
    TResult? Function(DeleteConversationEvent value)? delete,
    TResult? Function(LoadConversationsEvent value)? load,
    TResult? Function(UpdateConversationEvent value)? update,
    TResult? Function(ChooseConversationEvent value)? choose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddConversationEvent value)? add,
    TResult Function(DeleteConversationEvent value)? delete,
    TResult Function(LoadConversationsEvent value)? load,
    TResult Function(UpdateConversationEvent value)? update,
    TResult Function(ChooseConversationEvent value)? choose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEventCopyWith<$Res> {
  factory $ConversationEventCopyWith(
          ConversationEvent value, $Res Function(ConversationEvent) then) =
      _$ConversationEventCopyWithImpl<$Res, ConversationEvent>;
}

/// @nodoc
class _$ConversationEventCopyWithImpl<$Res, $Val extends ConversationEvent>
    implements $ConversationEventCopyWith<$Res> {
  _$ConversationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddConversationEventCopyWith<$Res> {
  factory _$$AddConversationEventCopyWith(_$AddConversationEvent value,
          $Res Function(_$AddConversationEvent) then) =
      __$$AddConversationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Conversation conversation});
}

/// @nodoc
class __$$AddConversationEventCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$AddConversationEvent>
    implements _$$AddConversationEventCopyWith<$Res> {
  __$$AddConversationEventCopyWithImpl(_$AddConversationEvent _value,
      $Res Function(_$AddConversationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
  }) {
    return _then(_$AddConversationEvent(
      null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as Conversation,
    ));
  }
}

/// @nodoc

class _$AddConversationEvent implements AddConversationEvent {
  const _$AddConversationEvent(this.conversation);

  @override
  final Conversation conversation;

  @override
  String toString() {
    return 'ConversationEvent.add(conversation: $conversation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddConversationEvent &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddConversationEventCopyWith<_$AddConversationEvent> get copyWith =>
      __$$AddConversationEventCopyWithImpl<_$AddConversationEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Conversation conversation) add,
    required TResult Function(Conversation conversation) delete,
    required TResult Function() load,
    required TResult Function(Conversation conversation) update,
    required TResult Function(String conversationUUid) choose,
  }) {
    return add(conversation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Conversation conversation)? add,
    TResult? Function(Conversation conversation)? delete,
    TResult? Function()? load,
    TResult? Function(Conversation conversation)? update,
    TResult? Function(String conversationUUid)? choose,
  }) {
    return add?.call(conversation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Conversation conversation)? add,
    TResult Function(Conversation conversation)? delete,
    TResult Function()? load,
    TResult Function(Conversation conversation)? update,
    TResult Function(String conversationUUid)? choose,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(conversation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddConversationEvent value) add,
    required TResult Function(DeleteConversationEvent value) delete,
    required TResult Function(LoadConversationsEvent value) load,
    required TResult Function(UpdateConversationEvent value) update,
    required TResult Function(ChooseConversationEvent value) choose,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddConversationEvent value)? add,
    TResult? Function(DeleteConversationEvent value)? delete,
    TResult? Function(LoadConversationsEvent value)? load,
    TResult? Function(UpdateConversationEvent value)? update,
    TResult? Function(ChooseConversationEvent value)? choose,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddConversationEvent value)? add,
    TResult Function(DeleteConversationEvent value)? delete,
    TResult Function(LoadConversationsEvent value)? load,
    TResult Function(UpdateConversationEvent value)? update,
    TResult Function(ChooseConversationEvent value)? choose,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class AddConversationEvent implements ConversationEvent {
  const factory AddConversationEvent(final Conversation conversation) =
      _$AddConversationEvent;

  Conversation get conversation;
  @JsonKey(ignore: true)
  _$$AddConversationEventCopyWith<_$AddConversationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteConversationEventCopyWith<$Res> {
  factory _$$DeleteConversationEventCopyWith(_$DeleteConversationEvent value,
          $Res Function(_$DeleteConversationEvent) then) =
      __$$DeleteConversationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Conversation conversation});
}

/// @nodoc
class __$$DeleteConversationEventCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$DeleteConversationEvent>
    implements _$$DeleteConversationEventCopyWith<$Res> {
  __$$DeleteConversationEventCopyWithImpl(_$DeleteConversationEvent _value,
      $Res Function(_$DeleteConversationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
  }) {
    return _then(_$DeleteConversationEvent(
      null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as Conversation,
    ));
  }
}

/// @nodoc

class _$DeleteConversationEvent implements DeleteConversationEvent {
  const _$DeleteConversationEvent(this.conversation);

  @override
  final Conversation conversation;

  @override
  String toString() {
    return 'ConversationEvent.delete(conversation: $conversation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteConversationEvent &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteConversationEventCopyWith<_$DeleteConversationEvent> get copyWith =>
      __$$DeleteConversationEventCopyWithImpl<_$DeleteConversationEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Conversation conversation) add,
    required TResult Function(Conversation conversation) delete,
    required TResult Function() load,
    required TResult Function(Conversation conversation) update,
    required TResult Function(String conversationUUid) choose,
  }) {
    return delete(conversation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Conversation conversation)? add,
    TResult? Function(Conversation conversation)? delete,
    TResult? Function()? load,
    TResult? Function(Conversation conversation)? update,
    TResult? Function(String conversationUUid)? choose,
  }) {
    return delete?.call(conversation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Conversation conversation)? add,
    TResult Function(Conversation conversation)? delete,
    TResult Function()? load,
    TResult Function(Conversation conversation)? update,
    TResult Function(String conversationUUid)? choose,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(conversation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddConversationEvent value) add,
    required TResult Function(DeleteConversationEvent value) delete,
    required TResult Function(LoadConversationsEvent value) load,
    required TResult Function(UpdateConversationEvent value) update,
    required TResult Function(ChooseConversationEvent value) choose,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddConversationEvent value)? add,
    TResult? Function(DeleteConversationEvent value)? delete,
    TResult? Function(LoadConversationsEvent value)? load,
    TResult? Function(UpdateConversationEvent value)? update,
    TResult? Function(ChooseConversationEvent value)? choose,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddConversationEvent value)? add,
    TResult Function(DeleteConversationEvent value)? delete,
    TResult Function(LoadConversationsEvent value)? load,
    TResult Function(UpdateConversationEvent value)? update,
    TResult Function(ChooseConversationEvent value)? choose,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteConversationEvent implements ConversationEvent {
  const factory DeleteConversationEvent(final Conversation conversation) =
      _$DeleteConversationEvent;

  Conversation get conversation;
  @JsonKey(ignore: true)
  _$$DeleteConversationEventCopyWith<_$DeleteConversationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadConversationsEventCopyWith<$Res> {
  factory _$$LoadConversationsEventCopyWith(_$LoadConversationsEvent value,
          $Res Function(_$LoadConversationsEvent) then) =
      __$$LoadConversationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadConversationsEventCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$LoadConversationsEvent>
    implements _$$LoadConversationsEventCopyWith<$Res> {
  __$$LoadConversationsEventCopyWithImpl(_$LoadConversationsEvent _value,
      $Res Function(_$LoadConversationsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadConversationsEvent implements LoadConversationsEvent {
  const _$LoadConversationsEvent();

  @override
  String toString() {
    return 'ConversationEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadConversationsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Conversation conversation) add,
    required TResult Function(Conversation conversation) delete,
    required TResult Function() load,
    required TResult Function(Conversation conversation) update,
    required TResult Function(String conversationUUid) choose,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Conversation conversation)? add,
    TResult? Function(Conversation conversation)? delete,
    TResult? Function()? load,
    TResult? Function(Conversation conversation)? update,
    TResult? Function(String conversationUUid)? choose,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Conversation conversation)? add,
    TResult Function(Conversation conversation)? delete,
    TResult Function()? load,
    TResult Function(Conversation conversation)? update,
    TResult Function(String conversationUUid)? choose,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddConversationEvent value) add,
    required TResult Function(DeleteConversationEvent value) delete,
    required TResult Function(LoadConversationsEvent value) load,
    required TResult Function(UpdateConversationEvent value) update,
    required TResult Function(ChooseConversationEvent value) choose,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddConversationEvent value)? add,
    TResult? Function(DeleteConversationEvent value)? delete,
    TResult? Function(LoadConversationsEvent value)? load,
    TResult? Function(UpdateConversationEvent value)? update,
    TResult? Function(ChooseConversationEvent value)? choose,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddConversationEvent value)? add,
    TResult Function(DeleteConversationEvent value)? delete,
    TResult Function(LoadConversationsEvent value)? load,
    TResult Function(UpdateConversationEvent value)? update,
    TResult Function(ChooseConversationEvent value)? choose,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadConversationsEvent implements ConversationEvent {
  const factory LoadConversationsEvent() = _$LoadConversationsEvent;
}

/// @nodoc
abstract class _$$UpdateConversationEventCopyWith<$Res> {
  factory _$$UpdateConversationEventCopyWith(_$UpdateConversationEvent value,
          $Res Function(_$UpdateConversationEvent) then) =
      __$$UpdateConversationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Conversation conversation});
}

/// @nodoc
class __$$UpdateConversationEventCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$UpdateConversationEvent>
    implements _$$UpdateConversationEventCopyWith<$Res> {
  __$$UpdateConversationEventCopyWithImpl(_$UpdateConversationEvent _value,
      $Res Function(_$UpdateConversationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
  }) {
    return _then(_$UpdateConversationEvent(
      null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as Conversation,
    ));
  }
}

/// @nodoc

class _$UpdateConversationEvent implements UpdateConversationEvent {
  const _$UpdateConversationEvent(this.conversation);

  @override
  final Conversation conversation;

  @override
  String toString() {
    return 'ConversationEvent.update(conversation: $conversation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConversationEvent &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConversationEventCopyWith<_$UpdateConversationEvent> get copyWith =>
      __$$UpdateConversationEventCopyWithImpl<_$UpdateConversationEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Conversation conversation) add,
    required TResult Function(Conversation conversation) delete,
    required TResult Function() load,
    required TResult Function(Conversation conversation) update,
    required TResult Function(String conversationUUid) choose,
  }) {
    return update(conversation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Conversation conversation)? add,
    TResult? Function(Conversation conversation)? delete,
    TResult? Function()? load,
    TResult? Function(Conversation conversation)? update,
    TResult? Function(String conversationUUid)? choose,
  }) {
    return update?.call(conversation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Conversation conversation)? add,
    TResult Function(Conversation conversation)? delete,
    TResult Function()? load,
    TResult Function(Conversation conversation)? update,
    TResult Function(String conversationUUid)? choose,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(conversation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddConversationEvent value) add,
    required TResult Function(DeleteConversationEvent value) delete,
    required TResult Function(LoadConversationsEvent value) load,
    required TResult Function(UpdateConversationEvent value) update,
    required TResult Function(ChooseConversationEvent value) choose,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddConversationEvent value)? add,
    TResult? Function(DeleteConversationEvent value)? delete,
    TResult? Function(LoadConversationsEvent value)? load,
    TResult? Function(UpdateConversationEvent value)? update,
    TResult? Function(ChooseConversationEvent value)? choose,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddConversationEvent value)? add,
    TResult Function(DeleteConversationEvent value)? delete,
    TResult Function(LoadConversationsEvent value)? load,
    TResult Function(UpdateConversationEvent value)? update,
    TResult Function(ChooseConversationEvent value)? choose,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateConversationEvent implements ConversationEvent {
  const factory UpdateConversationEvent(final Conversation conversation) =
      _$UpdateConversationEvent;

  Conversation get conversation;
  @JsonKey(ignore: true)
  _$$UpdateConversationEventCopyWith<_$UpdateConversationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChooseConversationEventCopyWith<$Res> {
  factory _$$ChooseConversationEventCopyWith(_$ChooseConversationEvent value,
          $Res Function(_$ChooseConversationEvent) then) =
      __$$ChooseConversationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationUUid});
}

/// @nodoc
class __$$ChooseConversationEventCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$ChooseConversationEvent>
    implements _$$ChooseConversationEventCopyWith<$Res> {
  __$$ChooseConversationEventCopyWithImpl(_$ChooseConversationEvent _value,
      $Res Function(_$ChooseConversationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationUUid = null,
  }) {
    return _then(_$ChooseConversationEvent(
      null == conversationUUid
          ? _value.conversationUUid
          : conversationUUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChooseConversationEvent implements ChooseConversationEvent {
  const _$ChooseConversationEvent(this.conversationUUid);

  @override
  final String conversationUUid;

  @override
  String toString() {
    return 'ConversationEvent.choose(conversationUUid: $conversationUUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseConversationEvent &&
            (identical(other.conversationUUid, conversationUUid) ||
                other.conversationUUid == conversationUUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationUUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseConversationEventCopyWith<_$ChooseConversationEvent> get copyWith =>
      __$$ChooseConversationEventCopyWithImpl<_$ChooseConversationEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Conversation conversation) add,
    required TResult Function(Conversation conversation) delete,
    required TResult Function() load,
    required TResult Function(Conversation conversation) update,
    required TResult Function(String conversationUUid) choose,
  }) {
    return choose(conversationUUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Conversation conversation)? add,
    TResult? Function(Conversation conversation)? delete,
    TResult? Function()? load,
    TResult? Function(Conversation conversation)? update,
    TResult? Function(String conversationUUid)? choose,
  }) {
    return choose?.call(conversationUUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Conversation conversation)? add,
    TResult Function(Conversation conversation)? delete,
    TResult Function()? load,
    TResult Function(Conversation conversation)? update,
    TResult Function(String conversationUUid)? choose,
    required TResult orElse(),
  }) {
    if (choose != null) {
      return choose(conversationUUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddConversationEvent value) add,
    required TResult Function(DeleteConversationEvent value) delete,
    required TResult Function(LoadConversationsEvent value) load,
    required TResult Function(UpdateConversationEvent value) update,
    required TResult Function(ChooseConversationEvent value) choose,
  }) {
    return choose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddConversationEvent value)? add,
    TResult? Function(DeleteConversationEvent value)? delete,
    TResult? Function(LoadConversationsEvent value)? load,
    TResult? Function(UpdateConversationEvent value)? update,
    TResult? Function(ChooseConversationEvent value)? choose,
  }) {
    return choose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddConversationEvent value)? add,
    TResult Function(DeleteConversationEvent value)? delete,
    TResult Function(LoadConversationsEvent value)? load,
    TResult Function(UpdateConversationEvent value)? update,
    TResult Function(ChooseConversationEvent value)? choose,
    required TResult orElse(),
  }) {
    if (choose != null) {
      return choose(this);
    }
    return orElse();
  }
}

abstract class ChooseConversationEvent implements ConversationEvent {
  const factory ChooseConversationEvent(final String conversationUUid) =
      _$ChooseConversationEvent;

  String get conversationUUid;
  @JsonKey(ignore: true)
  _$$ChooseConversationEventCopyWith<_$ChooseConversationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConversationState {
  List<Conversation> get conversations => throw _privateConstructorUsedError;
  String get currentConversationUuid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Conversation> conversations, String currentConversationUuid)
        conversationInitial,
    required TResult Function(
            List<Conversation> conversations, String currentConversationUuid)
        conversationLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationInitial,
    TResult? Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationInitial,
    TResult Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationInitial value) conversationInitial,
    required TResult Function(ConversationLoaded value) conversationLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConversationInitial value)? conversationInitial,
    TResult? Function(ConversationLoaded value)? conversationLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationInitial value)? conversationInitial,
    TResult Function(ConversationLoaded value)? conversationLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationStateCopyWith<ConversationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationStateCopyWith<$Res> {
  factory $ConversationStateCopyWith(
          ConversationState value, $Res Function(ConversationState) then) =
      _$ConversationStateCopyWithImpl<$Res, ConversationState>;
  @useResult
  $Res call({List<Conversation> conversations, String currentConversationUuid});
}

/// @nodoc
class _$ConversationStateCopyWithImpl<$Res, $Val extends ConversationState>
    implements $ConversationStateCopyWith<$Res> {
  _$ConversationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? currentConversationUuid = null,
  }) {
    return _then(_value.copyWith(
      conversations: null == conversations
          ? _value.conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      currentConversationUuid: null == currentConversationUuid
          ? _value.currentConversationUuid
          : currentConversationUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationInitialCopyWith<$Res>
    implements $ConversationStateCopyWith<$Res> {
  factory _$$ConversationInitialCopyWith(_$ConversationInitial value,
          $Res Function(_$ConversationInitial) then) =
      __$$ConversationInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Conversation> conversations, String currentConversationUuid});
}

/// @nodoc
class __$$ConversationInitialCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$ConversationInitial>
    implements _$$ConversationInitialCopyWith<$Res> {
  __$$ConversationInitialCopyWithImpl(
      _$ConversationInitial _value, $Res Function(_$ConversationInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? currentConversationUuid = null,
  }) {
    return _then(_$ConversationInitial(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      null == currentConversationUuid
          ? _value.currentConversationUuid
          : currentConversationUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConversationInitial implements ConversationInitial {
  _$ConversationInitial(
      [final List<Conversation> conversations = const [],
      this.currentConversationUuid = ''])
      : _conversations = conversations;

  final List<Conversation> _conversations;
  @override
  @JsonKey()
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  @JsonKey()
  final String currentConversationUuid;

  @override
  String toString() {
    return 'ConversationState.conversationInitial(conversations: $conversations, currentConversationUuid: $currentConversationUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationInitial &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations) &&
            (identical(
                    other.currentConversationUuid, currentConversationUuid) ||
                other.currentConversationUuid == currentConversationUuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_conversations),
      currentConversationUuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationInitialCopyWith<_$ConversationInitial> get copyWith =>
      __$$ConversationInitialCopyWithImpl<_$ConversationInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Conversation> conversations, String currentConversationUuid)
        conversationInitial,
    required TResult Function(
            List<Conversation> conversations, String currentConversationUuid)
        conversationLoaded,
  }) {
    return conversationInitial(conversations, currentConversationUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationInitial,
    TResult? Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationLoaded,
  }) {
    return conversationInitial?.call(conversations, currentConversationUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationInitial,
    TResult Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationLoaded,
    required TResult orElse(),
  }) {
    if (conversationInitial != null) {
      return conversationInitial(conversations, currentConversationUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationInitial value) conversationInitial,
    required TResult Function(ConversationLoaded value) conversationLoaded,
  }) {
    return conversationInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConversationInitial value)? conversationInitial,
    TResult? Function(ConversationLoaded value)? conversationLoaded,
  }) {
    return conversationInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationInitial value)? conversationInitial,
    TResult Function(ConversationLoaded value)? conversationLoaded,
    required TResult orElse(),
  }) {
    if (conversationInitial != null) {
      return conversationInitial(this);
    }
    return orElse();
  }
}

abstract class ConversationInitial implements ConversationState {
  factory ConversationInitial(
      [final List<Conversation> conversations,
      final String currentConversationUuid]) = _$ConversationInitial;

  @override
  List<Conversation> get conversations;
  @override
  String get currentConversationUuid;
  @override
  @JsonKey(ignore: true)
  _$$ConversationInitialCopyWith<_$ConversationInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConversationLoadedCopyWith<$Res>
    implements $ConversationStateCopyWith<$Res> {
  factory _$$ConversationLoadedCopyWith(_$ConversationLoaded value,
          $Res Function(_$ConversationLoaded) then) =
      __$$ConversationLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Conversation> conversations, String currentConversationUuid});
}

/// @nodoc
class __$$ConversationLoadedCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$ConversationLoaded>
    implements _$$ConversationLoadedCopyWith<$Res> {
  __$$ConversationLoadedCopyWithImpl(
      _$ConversationLoaded _value, $Res Function(_$ConversationLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? currentConversationUuid = null,
  }) {
    return _then(_$ConversationLoaded(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      null == currentConversationUuid
          ? _value.currentConversationUuid
          : currentConversationUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConversationLoaded implements ConversationLoaded {
  _$ConversationLoaded(
      final List<Conversation> conversations, this.currentConversationUuid)
      : _conversations = conversations;

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  final String currentConversationUuid;

  @override
  String toString() {
    return 'ConversationState.conversationLoaded(conversations: $conversations, currentConversationUuid: $currentConversationUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationLoaded &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations) &&
            (identical(
                    other.currentConversationUuid, currentConversationUuid) ||
                other.currentConversationUuid == currentConversationUuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_conversations),
      currentConversationUuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationLoadedCopyWith<_$ConversationLoaded> get copyWith =>
      __$$ConversationLoadedCopyWithImpl<_$ConversationLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Conversation> conversations, String currentConversationUuid)
        conversationInitial,
    required TResult Function(
            List<Conversation> conversations, String currentConversationUuid)
        conversationLoaded,
  }) {
    return conversationLoaded(conversations, currentConversationUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationInitial,
    TResult? Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationLoaded,
  }) {
    return conversationLoaded?.call(conversations, currentConversationUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationInitial,
    TResult Function(
            List<Conversation> conversations, String currentConversationUuid)?
        conversationLoaded,
    required TResult orElse(),
  }) {
    if (conversationLoaded != null) {
      return conversationLoaded(conversations, currentConversationUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationInitial value) conversationInitial,
    required TResult Function(ConversationLoaded value) conversationLoaded,
  }) {
    return conversationLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConversationInitial value)? conversationInitial,
    TResult? Function(ConversationLoaded value)? conversationLoaded,
  }) {
    return conversationLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationInitial value)? conversationInitial,
    TResult Function(ConversationLoaded value)? conversationLoaded,
    required TResult orElse(),
  }) {
    if (conversationLoaded != null) {
      return conversationLoaded(this);
    }
    return orElse();
  }
}

abstract class ConversationLoaded implements ConversationState {
  factory ConversationLoaded(final List<Conversation> conversations,
      final String currentConversationUuid) = _$ConversationLoaded;

  @override
  List<Conversation> get conversations;
  @override
  String get currentConversationUuid;
  @override
  @JsonKey(ignore: true)
  _$$ConversationLoadedCopyWith<_$ConversationLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
