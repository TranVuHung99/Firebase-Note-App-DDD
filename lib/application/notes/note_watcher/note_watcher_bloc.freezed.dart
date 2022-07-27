// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompletedStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(WatchUncompletedStarted value)
        watchUncompletedStarted,
    required TResult Function(NotesReceived value) notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(NotesReceived value)? notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteWatcherEventCopyWith<$Res> {
  factory $NoteWatcherEventCopyWith(
          NoteWatcherEvent value, $Res Function(NoteWatcherEvent) then) =
      _$NoteWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteWatcherEventCopyWithImpl<$Res>
    implements $NoteWatcherEventCopyWith<$Res> {
  _$NoteWatcherEventCopyWithImpl(this._value, this._then);

  final NoteWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(NoteWatcherEvent) _then;
}

/// @nodoc
abstract class _$$WatchAllStartedCopyWith<$Res> {
  factory _$$WatchAllStartedCopyWith(
          _$WatchAllStarted value, $Res Function(_$WatchAllStarted) then) =
      __$$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchAllStartedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$$WatchAllStartedCopyWith<$Res> {
  __$$WatchAllStartedCopyWithImpl(
      _$WatchAllStarted _value, $Res Function(_$WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _$WatchAllStarted));

  @override
  _$WatchAllStarted get _value => super._value as _$WatchAllStarted;
}

/// @nodoc

class _$WatchAllStarted implements WatchAllStarted {
  const _$WatchAllStarted();

  @override
  String toString() {
    return 'NoteWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompletedStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesReceived,
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
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(WatchUncompletedStarted value)
        watchUncompletedStarted,
    required TResult Function(NotesReceived value) notesReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(NotesReceived value)? notesReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class WatchAllStarted implements NoteWatcherEvent {
  const factory WatchAllStarted() = _$WatchAllStarted;
}

/// @nodoc
abstract class _$$WatchUncompletedStartedCopyWith<$Res> {
  factory _$$WatchUncompletedStartedCopyWith(_$WatchUncompletedStarted value,
          $Res Function(_$WatchUncompletedStarted) then) =
      __$$WatchUncompletedStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchUncompletedStartedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$$WatchUncompletedStartedCopyWith<$Res> {
  __$$WatchUncompletedStartedCopyWithImpl(_$WatchUncompletedStarted _value,
      $Res Function(_$WatchUncompletedStarted) _then)
      : super(_value, (v) => _then(v as _$WatchUncompletedStarted));

  @override
  _$WatchUncompletedStarted get _value =>
      super._value as _$WatchUncompletedStarted;
}

/// @nodoc

class _$WatchUncompletedStarted implements WatchUncompletedStarted {
  const _$WatchUncompletedStarted();

  @override
  String toString() {
    return 'NoteWatcherEvent.watchUncompletedStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchUncompletedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompletedStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesReceived,
  }) {
    return watchUncompletedStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesReceived,
  }) {
    return watchUncompletedStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesReceived,
    required TResult orElse(),
  }) {
    if (watchUncompletedStarted != null) {
      return watchUncompletedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(WatchUncompletedStarted value)
        watchUncompletedStarted,
    required TResult Function(NotesReceived value) notesReceived,
  }) {
    return watchUncompletedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(NotesReceived value)? notesReceived,
  }) {
    return watchUncompletedStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (watchUncompletedStarted != null) {
      return watchUncompletedStarted(this);
    }
    return orElse();
  }
}

abstract class WatchUncompletedStarted implements NoteWatcherEvent {
  const factory WatchUncompletedStarted() = _$WatchUncompletedStarted;
}

/// @nodoc
abstract class _$$NotesReceivedCopyWith<$Res> {
  factory _$$NotesReceivedCopyWith(
          _$NotesReceived value, $Res Function(_$NotesReceived) then) =
      __$$NotesReceivedCopyWithImpl<$Res>;
  $Res call({Either<NoteFailure, KtList<Note>> failureOrNotes});
}

/// @nodoc
class __$$NotesReceivedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$$NotesReceivedCopyWith<$Res> {
  __$$NotesReceivedCopyWithImpl(
      _$NotesReceived _value, $Res Function(_$NotesReceived) _then)
      : super(_value, (v) => _then(v as _$NotesReceived));

  @override
  _$NotesReceived get _value => super._value as _$NotesReceived;

  @override
  $Res call({
    Object? failureOrNotes = freezed,
  }) {
    return _then(_$NotesReceived(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes // ignore: cast_nullable_to_non_nullable
              as Either<NoteFailure, KtList<Note>>,
    ));
  }
}

/// @nodoc

class _$NotesReceived implements NotesReceived {
  const _$NotesReceived(this.failureOrNotes);

  @override
  final Either<NoteFailure, KtList<Note>> failureOrNotes;

  @override
  String toString() {
    return 'NoteWatcherEvent.notesReceived(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrNotes, failureOrNotes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrNotes));

  @JsonKey(ignore: true)
  @override
  _$$NotesReceivedCopyWith<_$NotesReceived> get copyWith =>
      __$$NotesReceivedCopyWithImpl<_$NotesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompletedStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesReceived,
  }) {
    return notesReceived(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesReceived,
  }) {
    return notesReceived?.call(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesReceived,
    required TResult orElse(),
  }) {
    if (notesReceived != null) {
      return notesReceived(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(WatchUncompletedStarted value)
        watchUncompletedStarted,
    required TResult Function(NotesReceived value) notesReceived,
  }) {
    return notesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(NotesReceived value)? notesReceived,
  }) {
    return notesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (notesReceived != null) {
      return notesReceived(this);
    }
    return orElse();
  }
}

abstract class NotesReceived implements NoteWatcherEvent {
  const factory NotesReceived(
      final Either<NoteFailure, KtList<Note>> failureOrNotes) = _$NotesReceived;

  Either<NoteFailure, KtList<Note>> get failureOrNotes =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NotesReceivedCopyWith<_$NotesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Note> notes) loadingSuccess,
    required TResult Function(NoteFailure noteFailure) loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadingSuccess,
    TResult Function(NoteFailure noteFailure)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadingSuccess,
    TResult Function(NoteFailure noteFailure)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingProgress value) loadingProgress,
    required TResult Function(LoadingSuccess value) loadingSuccess,
    required TResult Function(LoadingFailure value) loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadingSuccess value)? loadingSuccess,
    TResult Function(LoadingFailure value)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadingSuccess value)? loadingSuccess,
    TResult Function(LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteWatcherStateCopyWith<$Res> {
  factory $NoteWatcherStateCopyWith(
          NoteWatcherState value, $Res Function(NoteWatcherState) then) =
      _$NoteWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteWatcherStateCopyWithImpl<$Res>
    implements $NoteWatcherStateCopyWith<$Res> {
  _$NoteWatcherStateCopyWithImpl(this._value, this._then);

  final NoteWatcherState _value;
  // ignore: unused_field
  final $Res Function(NoteWatcherState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$NoteWatcherStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'NoteWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Note> notes) loadingSuccess,
    required TResult Function(NoteFailure noteFailure) loadingFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadingSuccess,
    TResult Function(NoteFailure noteFailure)? loadingFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadingSuccess,
    TResult Function(NoteFailure noteFailure)? loadingFailure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingProgress value) loadingProgress,
    required TResult Function(LoadingSuccess value) loadingSuccess,
    required TResult Function(LoadingFailure value) loadingFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadingSuccess value)? loadingSuccess,
    TResult Function(LoadingFailure value)? loadingFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadingSuccess value)? loadingSuccess,
    TResult Function(LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NoteWatcherState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingProgressCopyWith<$Res> {
  factory _$$LoadingProgressCopyWith(
          _$LoadingProgress value, $Res Function(_$LoadingProgress) then) =
      __$$LoadingProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingProgressCopyWithImpl<$Res>
    extends _$NoteWatcherStateCopyWithImpl<$Res>
    implements _$$LoadingProgressCopyWith<$Res> {
  __$$LoadingProgressCopyWithImpl(
      _$LoadingProgress _value, $Res Function(_$LoadingProgress) _then)
      : super(_value, (v) => _then(v as _$LoadingProgress));

  @override
  _$LoadingProgress get _value => super._value as _$LoadingProgress;
}

/// @nodoc

class _$LoadingProgress implements LoadingProgress {
  const _$LoadingProgress();

  @override
  String toString() {
    return 'NoteWatcherState.loadingProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Note> notes) loadingSuccess,
    required TResult Function(NoteFailure noteFailure) loadingFailure,
  }) {
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadingSuccess,
    TResult Function(NoteFailure noteFailure)? loadingFailure,
  }) {
    return loadingProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadingSuccess,
    TResult Function(NoteFailure noteFailure)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingProgress value) loadingProgress,
    required TResult Function(LoadingSuccess value) loadingSuccess,
    required TResult Function(LoadingFailure value) loadingFailure,
  }) {
    return loadingProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadingSuccess value)? loadingSuccess,
    TResult Function(LoadingFailure value)? loadingFailure,
  }) {
    return loadingProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadingSuccess value)? loadingSuccess,
    TResult Function(LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress(this);
    }
    return orElse();
  }
}

abstract class LoadingProgress implements NoteWatcherState {
  const factory LoadingProgress() = _$LoadingProgress;
}

/// @nodoc
abstract class _$$LoadingSuccessCopyWith<$Res> {
  factory _$$LoadingSuccessCopyWith(
          _$LoadingSuccess value, $Res Function(_$LoadingSuccess) then) =
      __$$LoadingSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Note> notes});
}

/// @nodoc
class __$$LoadingSuccessCopyWithImpl<$Res>
    extends _$NoteWatcherStateCopyWithImpl<$Res>
    implements _$$LoadingSuccessCopyWith<$Res> {
  __$$LoadingSuccessCopyWithImpl(
      _$LoadingSuccess _value, $Res Function(_$LoadingSuccess) _then)
      : super(_value, (v) => _then(v as _$LoadingSuccess));

  @override
  _$LoadingSuccess get _value => super._value as _$LoadingSuccess;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_$LoadingSuccess(
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as KtList<Note>,
    ));
  }
}

/// @nodoc

class _$LoadingSuccess implements LoadingSuccess {
  const _$LoadingSuccess(this.notes);

  @override
  final KtList<Note> notes;

  @override
  String toString() {
    return 'NoteWatcherState.loadingSuccess(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingSuccess &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notes));

  @JsonKey(ignore: true)
  @override
  _$$LoadingSuccessCopyWith<_$LoadingSuccess> get copyWith =>
      __$$LoadingSuccessCopyWithImpl<_$LoadingSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Note> notes) loadingSuccess,
    required TResult Function(NoteFailure noteFailure) loadingFailure,
  }) {
    return loadingSuccess(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadingSuccess,
    TResult Function(NoteFailure noteFailure)? loadingFailure,
  }) {
    return loadingSuccess?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadingSuccess,
    TResult Function(NoteFailure noteFailure)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingProgress value) loadingProgress,
    required TResult Function(LoadingSuccess value) loadingSuccess,
    required TResult Function(LoadingFailure value) loadingFailure,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadingSuccess value)? loadingSuccess,
    TResult Function(LoadingFailure value)? loadingFailure,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadingSuccess value)? loadingSuccess,
    TResult Function(LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadingSuccess implements NoteWatcherState {
  const factory LoadingSuccess(final KtList<Note> notes) = _$LoadingSuccess;

  KtList<Note> get notes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadingSuccessCopyWith<_$LoadingSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingFailureCopyWith<$Res> {
  factory _$$LoadingFailureCopyWith(
          _$LoadingFailure value, $Res Function(_$LoadingFailure) then) =
      __$$LoadingFailureCopyWithImpl<$Res>;
  $Res call({NoteFailure noteFailure});

  $NoteFailureCopyWith<$Res> get noteFailure;
}

/// @nodoc
class __$$LoadingFailureCopyWithImpl<$Res>
    extends _$NoteWatcherStateCopyWithImpl<$Res>
    implements _$$LoadingFailureCopyWith<$Res> {
  __$$LoadingFailureCopyWithImpl(
      _$LoadingFailure _value, $Res Function(_$LoadingFailure) _then)
      : super(_value, (v) => _then(v as _$LoadingFailure));

  @override
  _$LoadingFailure get _value => super._value as _$LoadingFailure;

  @override
  $Res call({
    Object? noteFailure = freezed,
  }) {
    return _then(_$LoadingFailure(
      noteFailure == freezed
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as NoteFailure,
    ));
  }

  @override
  $NoteFailureCopyWith<$Res> get noteFailure {
    return $NoteFailureCopyWith<$Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

/// @nodoc

class _$LoadingFailure implements LoadingFailure {
  const _$LoadingFailure(this.noteFailure);

  @override
  final NoteFailure noteFailure;

  @override
  String toString() {
    return 'NoteWatcherState.loadingFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingFailure &&
            const DeepCollectionEquality()
                .equals(other.noteFailure, noteFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(noteFailure));

  @JsonKey(ignore: true)
  @override
  _$$LoadingFailureCopyWith<_$LoadingFailure> get copyWith =>
      __$$LoadingFailureCopyWithImpl<_$LoadingFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Note> notes) loadingSuccess,
    required TResult Function(NoteFailure noteFailure) loadingFailure,
  }) {
    return loadingFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadingSuccess,
    TResult Function(NoteFailure noteFailure)? loadingFailure,
  }) {
    return loadingFailure?.call(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Note> notes)? loadingSuccess,
    TResult Function(NoteFailure noteFailure)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingFailure != null) {
      return loadingFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingProgress value) loadingProgress,
    required TResult Function(LoadingSuccess value) loadingSuccess,
    required TResult Function(LoadingFailure value) loadingFailure,
  }) {
    return loadingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadingSuccess value)? loadingSuccess,
    TResult Function(LoadingFailure value)? loadingFailure,
  }) {
    return loadingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadingSuccess value)? loadingSuccess,
    TResult Function(LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingFailure != null) {
      return loadingFailure(this);
    }
    return orElse();
  }
}

abstract class LoadingFailure implements NoteWatcherState {
  const factory LoadingFailure(final NoteFailure noteFailure) =
      _$LoadingFailure;

  NoteFailure get noteFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadingFailureCopyWith<_$LoadingFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
