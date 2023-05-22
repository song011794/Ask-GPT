// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prompt_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PromptEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PromptFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromptFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromptFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptEventCopyWith<$Res> {
  factory $PromptEventCopyWith(
          PromptEvent value, $Res Function(PromptEvent) then) =
      _$PromptEventCopyWithImpl<$Res, PromptEvent>;
}

/// @nodoc
class _$PromptEventCopyWithImpl<$Res, $Val extends PromptEvent>
    implements $PromptEventCopyWith<$Res> {
  _$PromptEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PromptFetchCopyWith<$Res> {
  factory _$$PromptFetchCopyWith(
          _$PromptFetch value, $Res Function(_$PromptFetch) then) =
      __$$PromptFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PromptFetchCopyWithImpl<$Res>
    extends _$PromptEventCopyWithImpl<$Res, _$PromptFetch>
    implements _$$PromptFetchCopyWith<$Res> {
  __$$PromptFetchCopyWithImpl(
      _$PromptFetch _value, $Res Function(_$PromptFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PromptFetch implements PromptFetch {
  _$PromptFetch();

  @override
  String toString() {
    return 'PromptEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PromptFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PromptFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromptFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromptFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class PromptFetch implements PromptEvent {
  factory PromptFetch() = _$PromptFetch;
}

/// @nodoc
mixin _$PromptState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Prompt> prompts) success,
    required TResult Function() loading,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Prompt> prompts)? success,
    TResult? Function()? loading,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Prompt> prompts)? success,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PromptInitial value) init,
    required TResult Function(PromptSuccess value) success,
    required TResult Function(PromptLoading value) loading,
    required TResult Function(PromptFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromptInitial value)? init,
    TResult? Function(PromptSuccess value)? success,
    TResult? Function(PromptLoading value)? loading,
    TResult? Function(PromptFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromptInitial value)? init,
    TResult Function(PromptSuccess value)? success,
    TResult Function(PromptLoading value)? loading,
    TResult Function(PromptFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptStateCopyWith<$Res> {
  factory $PromptStateCopyWith(
          PromptState value, $Res Function(PromptState) then) =
      _$PromptStateCopyWithImpl<$Res, PromptState>;
}

/// @nodoc
class _$PromptStateCopyWithImpl<$Res, $Val extends PromptState>
    implements $PromptStateCopyWith<$Res> {
  _$PromptStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PromptInitialCopyWith<$Res> {
  factory _$$PromptInitialCopyWith(
          _$PromptInitial value, $Res Function(_$PromptInitial) then) =
      __$$PromptInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PromptInitialCopyWithImpl<$Res>
    extends _$PromptStateCopyWithImpl<$Res, _$PromptInitial>
    implements _$$PromptInitialCopyWith<$Res> {
  __$$PromptInitialCopyWithImpl(
      _$PromptInitial _value, $Res Function(_$PromptInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PromptInitial implements PromptInitial {
  _$PromptInitial();

  @override
  String toString() {
    return 'PromptState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PromptInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Prompt> prompts) success,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Prompt> prompts)? success,
    TResult? Function()? loading,
    TResult? Function()? failed,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Prompt> prompts)? success,
    TResult Function()? loading,
    TResult Function()? failed,
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
    required TResult Function(PromptInitial value) init,
    required TResult Function(PromptSuccess value) success,
    required TResult Function(PromptLoading value) loading,
    required TResult Function(PromptFailed value) failed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromptInitial value)? init,
    TResult? Function(PromptSuccess value)? success,
    TResult? Function(PromptLoading value)? loading,
    TResult? Function(PromptFailed value)? failed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromptInitial value)? init,
    TResult Function(PromptSuccess value)? success,
    TResult Function(PromptLoading value)? loading,
    TResult Function(PromptFailed value)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class PromptInitial implements PromptState {
  factory PromptInitial() = _$PromptInitial;
}

/// @nodoc
abstract class _$$PromptSuccessCopyWith<$Res> {
  factory _$$PromptSuccessCopyWith(
          _$PromptSuccess value, $Res Function(_$PromptSuccess) then) =
      __$$PromptSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Prompt> prompts});
}

/// @nodoc
class __$$PromptSuccessCopyWithImpl<$Res>
    extends _$PromptStateCopyWithImpl<$Res, _$PromptSuccess>
    implements _$$PromptSuccessCopyWith<$Res> {
  __$$PromptSuccessCopyWithImpl(
      _$PromptSuccess _value, $Res Function(_$PromptSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompts = null,
  }) {
    return _then(_$PromptSuccess(
      null == prompts
          ? _value._prompts
          : prompts // ignore: cast_nullable_to_non_nullable
              as List<Prompt>,
    ));
  }
}

/// @nodoc

class _$PromptSuccess implements PromptSuccess {
  _$PromptSuccess(final List<Prompt> prompts) : _prompts = prompts;

  final List<Prompt> _prompts;
  @override
  List<Prompt> get prompts {
    if (_prompts is EqualUnmodifiableListView) return _prompts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prompts);
  }

  @override
  String toString() {
    return 'PromptState.success(prompts: $prompts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptSuccess &&
            const DeepCollectionEquality().equals(other._prompts, _prompts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prompts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptSuccessCopyWith<_$PromptSuccess> get copyWith =>
      __$$PromptSuccessCopyWithImpl<_$PromptSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Prompt> prompts) success,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return success(prompts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Prompt> prompts)? success,
    TResult? Function()? loading,
    TResult? Function()? failed,
  }) {
    return success?.call(prompts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Prompt> prompts)? success,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(prompts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PromptInitial value) init,
    required TResult Function(PromptSuccess value) success,
    required TResult Function(PromptLoading value) loading,
    required TResult Function(PromptFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromptInitial value)? init,
    TResult? Function(PromptSuccess value)? success,
    TResult? Function(PromptLoading value)? loading,
    TResult? Function(PromptFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromptInitial value)? init,
    TResult Function(PromptSuccess value)? success,
    TResult Function(PromptLoading value)? loading,
    TResult Function(PromptFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PromptSuccess implements PromptState {
  factory PromptSuccess(final List<Prompt> prompts) = _$PromptSuccess;

  List<Prompt> get prompts;
  @JsonKey(ignore: true)
  _$$PromptSuccessCopyWith<_$PromptSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromptLoadingCopyWith<$Res> {
  factory _$$PromptLoadingCopyWith(
          _$PromptLoading value, $Res Function(_$PromptLoading) then) =
      __$$PromptLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PromptLoadingCopyWithImpl<$Res>
    extends _$PromptStateCopyWithImpl<$Res, _$PromptLoading>
    implements _$$PromptLoadingCopyWith<$Res> {
  __$$PromptLoadingCopyWithImpl(
      _$PromptLoading _value, $Res Function(_$PromptLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PromptLoading implements PromptLoading {
  _$PromptLoading();

  @override
  String toString() {
    return 'PromptState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PromptLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Prompt> prompts) success,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Prompt> prompts)? success,
    TResult? Function()? loading,
    TResult? Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Prompt> prompts)? success,
    TResult Function()? loading,
    TResult Function()? failed,
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
    required TResult Function(PromptInitial value) init,
    required TResult Function(PromptSuccess value) success,
    required TResult Function(PromptLoading value) loading,
    required TResult Function(PromptFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromptInitial value)? init,
    TResult? Function(PromptSuccess value)? success,
    TResult? Function(PromptLoading value)? loading,
    TResult? Function(PromptFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromptInitial value)? init,
    TResult Function(PromptSuccess value)? success,
    TResult Function(PromptLoading value)? loading,
    TResult Function(PromptFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PromptLoading implements PromptState {
  factory PromptLoading() = _$PromptLoading;
}

/// @nodoc
abstract class _$$PromptFailedCopyWith<$Res> {
  factory _$$PromptFailedCopyWith(
          _$PromptFailed value, $Res Function(_$PromptFailed) then) =
      __$$PromptFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PromptFailedCopyWithImpl<$Res>
    extends _$PromptStateCopyWithImpl<$Res, _$PromptFailed>
    implements _$$PromptFailedCopyWith<$Res> {
  __$$PromptFailedCopyWithImpl(
      _$PromptFailed _value, $Res Function(_$PromptFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PromptFailed implements PromptFailed {
  _$PromptFailed();

  @override
  String toString() {
    return 'PromptState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PromptFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Prompt> prompts) success,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Prompt> prompts)? success,
    TResult? Function()? loading,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Prompt> prompts)? success,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PromptInitial value) init,
    required TResult Function(PromptSuccess value) success,
    required TResult Function(PromptLoading value) loading,
    required TResult Function(PromptFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromptInitial value)? init,
    TResult? Function(PromptSuccess value)? success,
    TResult? Function(PromptLoading value)? loading,
    TResult? Function(PromptFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromptInitial value)? init,
    TResult Function(PromptSuccess value)? success,
    TResult Function(PromptLoading value)? loading,
    TResult Function(PromptFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class PromptFailed implements PromptState {
  factory PromptFailed() = _$PromptFailed;
}
