// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompleteStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchUncompleteStarted,
    TResult? Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompleteStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchUncompleteStarted value)
        watchUncompleteStarted,
    required TResult Function(_NotesRecieved value) notesRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchUncompleteStarted value)? watchUncompleteStarted,
    TResult? Function(_NotesRecieved value)? notesRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchUncompleteStarted value)? watchUncompleteStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteWatcherEventCopyWith<$Res> {
  factory $NoteWatcherEventCopyWith(
          NoteWatcherEvent value, $Res Function(NoteWatcherEvent) then) =
      _$NoteWatcherEventCopyWithImpl<$Res, NoteWatcherEvent>;
}

/// @nodoc
class _$NoteWatcherEventCopyWithImpl<$Res, $Val extends NoteWatcherEvent>
    implements $NoteWatcherEventCopyWith<$Res> {
  _$NoteWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WatchAllStartedImplCopyWith<$Res> {
  factory _$$WatchAllStartedImplCopyWith(_$WatchAllStartedImpl value,
          $Res Function(_$WatchAllStartedImpl) then) =
      __$$WatchAllStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchAllStartedImplCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res, _$WatchAllStartedImpl>
    implements _$$WatchAllStartedImplCopyWith<$Res> {
  __$$WatchAllStartedImplCopyWithImpl(
      _$WatchAllStartedImpl _value, $Res Function(_$WatchAllStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchAllStartedImpl implements _WatchAllStarted {
  const _$WatchAllStartedImpl();

  @override
  String toString() {
    return 'NoteWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchAllStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompleteStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesRecieved,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchUncompleteStarted,
    TResult? Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompleteStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchUncompleteStarted value)
        watchUncompleteStarted,
    required TResult Function(_NotesRecieved value) notesRecieved,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchUncompleteStarted value)? watchUncompleteStarted,
    TResult? Function(_NotesRecieved value)? notesRecieved,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchUncompleteStarted value)? watchUncompleteStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements NoteWatcherEvent {
  const factory _WatchAllStarted() = _$WatchAllStartedImpl;
}

/// @nodoc
abstract class _$$WatchUncompleteStartedImplCopyWith<$Res> {
  factory _$$WatchUncompleteStartedImplCopyWith(
          _$WatchUncompleteStartedImpl value,
          $Res Function(_$WatchUncompleteStartedImpl) then) =
      __$$WatchUncompleteStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchUncompleteStartedImplCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res, _$WatchUncompleteStartedImpl>
    implements _$$WatchUncompleteStartedImplCopyWith<$Res> {
  __$$WatchUncompleteStartedImplCopyWithImpl(
      _$WatchUncompleteStartedImpl _value,
      $Res Function(_$WatchUncompleteStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchUncompleteStartedImpl implements _WatchUncompleteStarted {
  const _$WatchUncompleteStartedImpl();

  @override
  String toString() {
    return 'NoteWatcherEvent.watchUncompleteStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchUncompleteStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompleteStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesRecieved,
  }) {
    return watchUncompleteStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchUncompleteStarted,
    TResult? Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
  }) {
    return watchUncompleteStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompleteStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
    required TResult orElse(),
  }) {
    if (watchUncompleteStarted != null) {
      return watchUncompleteStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchUncompleteStarted value)
        watchUncompleteStarted,
    required TResult Function(_NotesRecieved value) notesRecieved,
  }) {
    return watchUncompleteStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchUncompleteStarted value)? watchUncompleteStarted,
    TResult? Function(_NotesRecieved value)? notesRecieved,
  }) {
    return watchUncompleteStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchUncompleteStarted value)? watchUncompleteStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
    required TResult orElse(),
  }) {
    if (watchUncompleteStarted != null) {
      return watchUncompleteStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUncompleteStarted implements NoteWatcherEvent {
  const factory _WatchUncompleteStarted() = _$WatchUncompleteStartedImpl;
}

/// @nodoc
abstract class _$$NotesRecievedImplCopyWith<$Res> {
  factory _$$NotesRecievedImplCopyWith(
          _$NotesRecievedImpl value, $Res Function(_$NotesRecievedImpl) then) =
      __$$NotesRecievedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<NoteFailure, KtList<Note>> failureOrNotes});
}

/// @nodoc
class __$$NotesRecievedImplCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res, _$NotesRecievedImpl>
    implements _$$NotesRecievedImplCopyWith<$Res> {
  __$$NotesRecievedImplCopyWithImpl(
      _$NotesRecievedImpl _value, $Res Function(_$NotesRecievedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrNotes = null,
  }) {
    return _then(_$NotesRecievedImpl(
      null == failureOrNotes
          ? _value.failureOrNotes
          : failureOrNotes // ignore: cast_nullable_to_non_nullable
              as Either<NoteFailure, KtList<Note>>,
    ));
  }
}

/// @nodoc

class _$NotesRecievedImpl implements _NotesRecieved {
  const _$NotesRecievedImpl(this.failureOrNotes);

  @override
  final Either<NoteFailure, KtList<Note>> failureOrNotes;

  @override
  String toString() {
    return 'NoteWatcherEvent.notesRecieved(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesRecievedImpl &&
            (identical(other.failureOrNotes, failureOrNotes) ||
                other.failureOrNotes == failureOrNotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrNotes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesRecievedImplCopyWith<_$NotesRecievedImpl> get copyWith =>
      __$$NotesRecievedImplCopyWithImpl<_$NotesRecievedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompleteStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesRecieved,
  }) {
    return notesRecieved(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchUncompleteStarted,
    TResult? Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
  }) {
    return notesRecieved?.call(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompleteStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
    required TResult orElse(),
  }) {
    if (notesRecieved != null) {
      return notesRecieved(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchUncompleteStarted value)
        watchUncompleteStarted,
    required TResult Function(_NotesRecieved value) notesRecieved,
  }) {
    return notesRecieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchUncompleteStarted value)? watchUncompleteStarted,
    TResult? Function(_NotesRecieved value)? notesRecieved,
  }) {
    return notesRecieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchUncompleteStarted value)? watchUncompleteStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
    required TResult orElse(),
  }) {
    if (notesRecieved != null) {
      return notesRecieved(this);
    }
    return orElse();
  }
}

abstract class _NotesRecieved implements NoteWatcherEvent {
  const factory _NotesRecieved(
          final Either<NoteFailure, KtList<Note>> failureOrNotes) =
      _$NotesRecievedImpl;

  Either<NoteFailure, KtList<Note>> get failureOrNotes;
  @JsonKey(ignore: true)
  _$$NotesRecievedImplCopyWith<_$NotesRecievedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Note> notes) loadSuccess,
    required TResult Function(NoteFailure noteFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Note> notes)? loadSuccess,
    TResult? Function(NoteFailure noteFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? loadSuccess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteWatcherStateCopyWith<$Res> {
  factory $NoteWatcherStateCopyWith(
          NoteWatcherState value, $Res Function(NoteWatcherState) then) =
      _$NoteWatcherStateCopyWithImpl<$Res, NoteWatcherState>;
}

/// @nodoc
class _$NoteWatcherStateCopyWithImpl<$Res, $Val extends NoteWatcherState>
    implements $NoteWatcherStateCopyWith<$Res> {
  _$NoteWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NoteWatcherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NoteWatcherState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Note> notes) loadSuccess,
    required TResult Function(NoteFailure noteFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Note> notes)? loadSuccess,
    TResult? Function(NoteFailure noteFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? loadSuccess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NoteWatcherState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NoteWatcherStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'NoteWatcherState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Note> notes) loadSuccess,
    required TResult Function(NoteFailure noteFailure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Note> notes)? loadSuccess,
    TResult? Function(NoteFailure noteFailure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? loadSuccess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NoteWatcherState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<Note> notes});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$NoteWatcherStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as KtList<Note>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(this.notes);

  @override
  final KtList<Note> notes;

  @override
  String toString() {
    return 'NoteWatcherState.loadSuccess(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Note> notes) loadSuccess,
    required TResult Function(NoteFailure noteFailure) loadFailure,
  }) {
    return loadSuccess(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Note> notes)? loadSuccess,
    TResult? Function(NoteFailure noteFailure)? loadFailure,
  }) {
    return loadSuccess?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? loadSuccess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements NoteWatcherState {
  const factory _LoadSuccess(final KtList<Note> notes) = _$LoadSuccessImpl;

  KtList<Note> get notes;
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteFailure noteFailure});

  $NoteFailureCopyWith<$Res> get noteFailure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$NoteWatcherStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteFailure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == noteFailure
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as NoteFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteFailureCopyWith<$Res> get noteFailure {
    return $NoteFailureCopyWith<$Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.noteFailure);

  @override
  final NoteFailure noteFailure;

  @override
  String toString() {
    return 'NoteWatcherState.loadFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.noteFailure, noteFailure) ||
                other.noteFailure == noteFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Note> notes) loadSuccess,
    required TResult Function(NoteFailure noteFailure) loadFailure,
  }) {
    return loadFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Note> notes)? loadSuccess,
    TResult? Function(NoteFailure noteFailure)? loadFailure,
  }) {
    return loadFailure?.call(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? loadSuccess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements NoteWatcherState {
  const factory _LoadFailure(final NoteFailure noteFailure) = _$LoadFailureImpl;

  NoteFailure get noteFailure;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
