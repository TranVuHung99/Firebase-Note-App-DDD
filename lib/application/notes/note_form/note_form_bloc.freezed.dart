// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodySrt) bodyChange,
    required TResult Function(Color color) colorChange,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChange,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChange value) bodyChange,
    required TResult Function(ColorChange value) colorChange,
    required TResult Function(TodosChange value) todosChange,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

/// @nodoc
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Note> initialNoteOption});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, (v) => _then(v as _$Initialized));

  @override
  _$Initialized get _value => super._value as _$Initialized;

  @override
  $Res call({
    Object? initialNoteOption = freezed,
  }) {
    return _then(_$Initialized(
      initialNoteOption == freezed
          ? _value.initialNoteOption
          : initialNoteOption // ignore: cast_nullable_to_non_nullable
              as Option<Note>,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.initialNoteOption);

  @override
  final Option<Note> initialNoteOption;

  @override
  String toString() {
    return 'NoteFormEvent.initialized(initialNoteOption: $initialNoteOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialNoteOption, initialNoteOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialNoteOption));

  @JsonKey(ignore: true)
  @override
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodySrt) bodyChange,
    required TResult Function(Color color) colorChange,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChange,
    required TResult Function() saved,
  }) {
    return initialized(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
  }) {
    return initialized?.call(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialNoteOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChange value) bodyChange,
    required TResult Function(ColorChange value) colorChange,
    required TResult Function(TodosChange value) todosChange,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements NoteFormEvent {
  const factory Initialized(final Option<Note> initialNoteOption) =
      _$Initialized;

  Option<Note> get initialNoteOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BodyChangeCopyWith<$Res> {
  factory _$$BodyChangeCopyWith(
          _$BodyChange value, $Res Function(_$BodyChange) then) =
      __$$BodyChangeCopyWithImpl<$Res>;
  $Res call({String bodySrt});
}

/// @nodoc
class __$$BodyChangeCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$BodyChangeCopyWith<$Res> {
  __$$BodyChangeCopyWithImpl(
      _$BodyChange _value, $Res Function(_$BodyChange) _then)
      : super(_value, (v) => _then(v as _$BodyChange));

  @override
  _$BodyChange get _value => super._value as _$BodyChange;

  @override
  $Res call({
    Object? bodySrt = freezed,
  }) {
    return _then(_$BodyChange(
      bodySrt == freezed
          ? _value.bodySrt
          : bodySrt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BodyChange implements BodyChange {
  const _$BodyChange(this.bodySrt);

  @override
  final String bodySrt;

  @override
  String toString() {
    return 'NoteFormEvent.bodyChange(bodySrt: $bodySrt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyChange &&
            const DeepCollectionEquality().equals(other.bodySrt, bodySrt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bodySrt));

  @JsonKey(ignore: true)
  @override
  _$$BodyChangeCopyWith<_$BodyChange> get copyWith =>
      __$$BodyChangeCopyWithImpl<_$BodyChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodySrt) bodyChange,
    required TResult Function(Color color) colorChange,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChange,
    required TResult Function() saved,
  }) {
    return bodyChange(bodySrt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
  }) {
    return bodyChange?.call(bodySrt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (bodyChange != null) {
      return bodyChange(bodySrt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChange value) bodyChange,
    required TResult Function(ColorChange value) colorChange,
    required TResult Function(TodosChange value) todosChange,
    required TResult Function(Saved value) saved,
  }) {
    return bodyChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
  }) {
    return bodyChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (bodyChange != null) {
      return bodyChange(this);
    }
    return orElse();
  }
}

abstract class BodyChange implements NoteFormEvent {
  const factory BodyChange(final String bodySrt) = _$BodyChange;

  String get bodySrt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BodyChangeCopyWith<_$BodyChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorChangeCopyWith<$Res> {
  factory _$$ColorChangeCopyWith(
          _$ColorChange value, $Res Function(_$ColorChange) then) =
      __$$ColorChangeCopyWithImpl<$Res>;
  $Res call({Color color});
}

/// @nodoc
class __$$ColorChangeCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$ColorChangeCopyWith<$Res> {
  __$$ColorChangeCopyWithImpl(
      _$ColorChange _value, $Res Function(_$ColorChange) _then)
      : super(_value, (v) => _then(v as _$ColorChange));

  @override
  _$ColorChange get _value => super._value as _$ColorChange;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$ColorChange(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ColorChange implements ColorChange {
  const _$ColorChange(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'NoteFormEvent.colorChange(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorChange &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$ColorChangeCopyWith<_$ColorChange> get copyWith =>
      __$$ColorChangeCopyWithImpl<_$ColorChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodySrt) bodyChange,
    required TResult Function(Color color) colorChange,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChange,
    required TResult Function() saved,
  }) {
    return colorChange(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
  }) {
    return colorChange?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (colorChange != null) {
      return colorChange(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChange value) bodyChange,
    required TResult Function(ColorChange value) colorChange,
    required TResult Function(TodosChange value) todosChange,
    required TResult Function(Saved value) saved,
  }) {
    return colorChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
  }) {
    return colorChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (colorChange != null) {
      return colorChange(this);
    }
    return orElse();
  }
}

abstract class ColorChange implements NoteFormEvent {
  const factory ColorChange(final Color color) = _$ColorChange;

  Color get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ColorChangeCopyWith<_$ColorChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodosChangeCopyWith<$Res> {
  factory _$$TodosChangeCopyWith(
          _$TodosChange value, $Res Function(_$TodosChange) then) =
      __$$TodosChangeCopyWithImpl<$Res>;
  $Res call({KtList<TodoItemPrimitive> todos});
}

/// @nodoc
class __$$TodosChangeCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$TodosChangeCopyWith<$Res> {
  __$$TodosChangeCopyWithImpl(
      _$TodosChange _value, $Res Function(_$TodosChange) _then)
      : super(_value, (v) => _then(v as _$TodosChange));

  @override
  _$TodosChange get _value => super._value as _$TodosChange;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_$TodosChange(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as KtList<TodoItemPrimitive>,
    ));
  }
}

/// @nodoc

class _$TodosChange implements TodosChange {
  const _$TodosChange(this.todos);

  @override
  final KtList<TodoItemPrimitive> todos;

  @override
  String toString() {
    return 'NoteFormEvent.todosChange(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosChange &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$$TodosChangeCopyWith<_$TodosChange> get copyWith =>
      __$$TodosChangeCopyWithImpl<_$TodosChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodySrt) bodyChange,
    required TResult Function(Color color) colorChange,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChange,
    required TResult Function() saved,
  }) {
    return todosChange(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
  }) {
    return todosChange?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (todosChange != null) {
      return todosChange(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChange value) bodyChange,
    required TResult Function(ColorChange value) colorChange,
    required TResult Function(TodosChange value) todosChange,
    required TResult Function(Saved value) saved,
  }) {
    return todosChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
  }) {
    return todosChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (todosChange != null) {
      return todosChange(this);
    }
    return orElse();
  }
}

abstract class TodosChange implements NoteFormEvent {
  const factory TodosChange(final KtList<TodoItemPrimitive> todos) =
      _$TodosChange;

  KtList<TodoItemPrimitive> get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TodosChangeCopyWith<_$TodosChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, (v) => _then(v as _$Saved));

  @override
  _$Saved get _value => super._value as _$Saved;
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'NoteFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodySrt) bodyChange,
    required TResult Function(Color color) colorChange,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChange,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodySrt)? bodyChange,
    TResult Function(Color color)? colorChange,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChange,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(BodyChange value) bodyChange,
    required TResult Function(ColorChange value) colorChange,
    required TResult Function(TodosChange value) todosChange,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(BodyChange value)? bodyChange,
    TResult Function(ColorChange value)? colorChange,
    TResult Function(TodosChange value)? todosChange,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements NoteFormEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
mixin _$NoteFormState {
  Note get note => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {Note note,
      bool isSaving,
      bool isEditing,
      bool showErrorMessage,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? showErrorMessage = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$$_NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$$_NoteFormStateCopyWith(
          _$_NoteFormState value, $Res Function(_$_NoteFormState) then) =
      __$$_NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Note note,
      bool isSaving,
      bool isEditing,
      bool showErrorMessage,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$$_NoteFormStateCopyWith<$Res> {
  __$$_NoteFormStateCopyWithImpl(
      _$_NoteFormState _value, $Res Function(_$_NoteFormState) _then)
      : super(_value, (v) => _then(v as _$_NoteFormState));

  @override
  _$_NoteFormState get _value => super._value as _$_NoteFormState;

  @override
  $Res call({
    Object? note = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? showErrorMessage = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_NoteFormState(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {required this.note,
      required this.isSaving,
      required this.isEditing,
      required this.showErrorMessage,
      required this.saveFailureOrSuccessOption});

  @override
  final Note note;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final bool showErrorMessage;
  @override
  final Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'NoteFormState(note: $note, isSaving: $isSaving, isEditing: $isEditing, showErrorMessage: $showErrorMessage, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteFormState &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessage, showErrorMessage) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(showErrorMessage),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      __$$_NoteFormStateCopyWithImpl<_$_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required final Note note,
      required final bool isSaving,
      required final bool isEditing,
      required final bool showErrorMessage,
      required final Option<Either<NoteFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_NoteFormState;

  @override
  Note get note => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
