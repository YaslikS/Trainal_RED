// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_hive_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkoutHiveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ExerciseModel> listMeasures,
            String firstDate,
            String lastDate,
            String name,
            List<String> listExer,
            String id)
        addWorkout,
    required TResult Function() getAllWorkout,
    required TResult Function() deleteAllWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ExerciseModel> listMeasures, String firstDate,
            String lastDate, String name, List<String> listExer, String id)?
        addWorkout,
    TResult? Function()? getAllWorkout,
    TResult? Function()? deleteAllWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ExerciseModel> listMeasures, String firstDate,
            String lastDate, String name, List<String> listExer, String id)?
        addWorkout,
    TResult Function()? getAllWorkout,
    TResult Function()? deleteAllWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutHiveAddWorkoutEvent value) addWorkout,
    required TResult Function(WorkoutHiveGetAllWorkoutEvent value)
        getAllWorkout,
    required TResult Function(WorkoutHiveDeleteAllWorkoutEvent value)
        deleteAllWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutHiveAddWorkoutEvent value)? addWorkout,
    TResult? Function(WorkoutHiveGetAllWorkoutEvent value)? getAllWorkout,
    TResult? Function(WorkoutHiveDeleteAllWorkoutEvent value)? deleteAllWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutHiveAddWorkoutEvent value)? addWorkout,
    TResult Function(WorkoutHiveGetAllWorkoutEvent value)? getAllWorkout,
    TResult Function(WorkoutHiveDeleteAllWorkoutEvent value)? deleteAllWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutHiveEventCopyWith<$Res> {
  factory $WorkoutHiveEventCopyWith(
          WorkoutHiveEvent value, $Res Function(WorkoutHiveEvent) then) =
      _$WorkoutHiveEventCopyWithImpl<$Res, WorkoutHiveEvent>;
}

/// @nodoc
class _$WorkoutHiveEventCopyWithImpl<$Res, $Val extends WorkoutHiveEvent>
    implements $WorkoutHiveEventCopyWith<$Res> {
  _$WorkoutHiveEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WorkoutHiveAddWorkoutEventImplCopyWith<$Res> {
  factory _$$WorkoutHiveAddWorkoutEventImplCopyWith(
          _$WorkoutHiveAddWorkoutEventImpl value,
          $Res Function(_$WorkoutHiveAddWorkoutEventImpl) then) =
      __$$WorkoutHiveAddWorkoutEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ExerciseModel> listMeasures,
      String firstDate,
      String lastDate,
      String name,
      List<String> listExer,
      String id});
}

/// @nodoc
class __$$WorkoutHiveAddWorkoutEventImplCopyWithImpl<$Res>
    extends _$WorkoutHiveEventCopyWithImpl<$Res,
        _$WorkoutHiveAddWorkoutEventImpl>
    implements _$$WorkoutHiveAddWorkoutEventImplCopyWith<$Res> {
  __$$WorkoutHiveAddWorkoutEventImplCopyWithImpl(
      _$WorkoutHiveAddWorkoutEventImpl _value,
      $Res Function(_$WorkoutHiveAddWorkoutEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listMeasures = null,
    Object? firstDate = null,
    Object? lastDate = null,
    Object? name = null,
    Object? listExer = null,
    Object? id = null,
  }) {
    return _then(_$WorkoutHiveAddWorkoutEventImpl(
      listMeasures: null == listMeasures
          ? _value._listMeasures
          : listMeasures // ignore: cast_nullable_to_non_nullable
              as List<ExerciseModel>,
      firstDate: null == firstDate
          ? _value.firstDate
          : firstDate // ignore: cast_nullable_to_non_nullable
              as String,
      lastDate: null == lastDate
          ? _value.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      listExer: null == listExer
          ? _value._listExer
          : listExer // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WorkoutHiveAddWorkoutEventImpl implements WorkoutHiveAddWorkoutEvent {
  const _$WorkoutHiveAddWorkoutEventImpl(
      {required final List<ExerciseModel> listMeasures,
      required this.firstDate,
      required this.lastDate,
      required this.name,
      required final List<String> listExer,
      required this.id})
      : _listMeasures = listMeasures,
        _listExer = listExer;

  final List<ExerciseModel> _listMeasures;
  @override
  List<ExerciseModel> get listMeasures {
    if (_listMeasures is EqualUnmodifiableListView) return _listMeasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMeasures);
  }

  @override
  final String firstDate;
  @override
  final String lastDate;
  @override
  final String name;
  final List<String> _listExer;
  @override
  List<String> get listExer {
    if (_listExer is EqualUnmodifiableListView) return _listExer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listExer);
  }

  @override
  final String id;

  @override
  String toString() {
    return 'WorkoutHiveEvent.addWorkout(listMeasures: $listMeasures, firstDate: $firstDate, lastDate: $lastDate, name: $name, listExer: $listExer, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutHiveAddWorkoutEventImpl &&
            const DeepCollectionEquality()
                .equals(other._listMeasures, _listMeasures) &&
            (identical(other.firstDate, firstDate) ||
                other.firstDate == firstDate) &&
            (identical(other.lastDate, lastDate) ||
                other.lastDate == lastDate) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._listExer, _listExer) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listMeasures),
      firstDate,
      lastDate,
      name,
      const DeepCollectionEquality().hash(_listExer),
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutHiveAddWorkoutEventImplCopyWith<_$WorkoutHiveAddWorkoutEventImpl>
      get copyWith => __$$WorkoutHiveAddWorkoutEventImplCopyWithImpl<
          _$WorkoutHiveAddWorkoutEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ExerciseModel> listMeasures,
            String firstDate,
            String lastDate,
            String name,
            List<String> listExer,
            String id)
        addWorkout,
    required TResult Function() getAllWorkout,
    required TResult Function() deleteAllWorkout,
  }) {
    return addWorkout(listMeasures, firstDate, lastDate, name, listExer, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ExerciseModel> listMeasures, String firstDate,
            String lastDate, String name, List<String> listExer, String id)?
        addWorkout,
    TResult? Function()? getAllWorkout,
    TResult? Function()? deleteAllWorkout,
  }) {
    return addWorkout?.call(
        listMeasures, firstDate, lastDate, name, listExer, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ExerciseModel> listMeasures, String firstDate,
            String lastDate, String name, List<String> listExer, String id)?
        addWorkout,
    TResult Function()? getAllWorkout,
    TResult Function()? deleteAllWorkout,
    required TResult orElse(),
  }) {
    if (addWorkout != null) {
      return addWorkout(listMeasures, firstDate, lastDate, name, listExer, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutHiveAddWorkoutEvent value) addWorkout,
    required TResult Function(WorkoutHiveGetAllWorkoutEvent value)
        getAllWorkout,
    required TResult Function(WorkoutHiveDeleteAllWorkoutEvent value)
        deleteAllWorkout,
  }) {
    return addWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutHiveAddWorkoutEvent value)? addWorkout,
    TResult? Function(WorkoutHiveGetAllWorkoutEvent value)? getAllWorkout,
    TResult? Function(WorkoutHiveDeleteAllWorkoutEvent value)? deleteAllWorkout,
  }) {
    return addWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutHiveAddWorkoutEvent value)? addWorkout,
    TResult Function(WorkoutHiveGetAllWorkoutEvent value)? getAllWorkout,
    TResult Function(WorkoutHiveDeleteAllWorkoutEvent value)? deleteAllWorkout,
    required TResult orElse(),
  }) {
    if (addWorkout != null) {
      return addWorkout(this);
    }
    return orElse();
  }
}

abstract class WorkoutHiveAddWorkoutEvent implements WorkoutHiveEvent {
  const factory WorkoutHiveAddWorkoutEvent(
      {required final List<ExerciseModel> listMeasures,
      required final String firstDate,
      required final String lastDate,
      required final String name,
      required final List<String> listExer,
      required final String id}) = _$WorkoutHiveAddWorkoutEventImpl;

  List<ExerciseModel> get listMeasures;
  String get firstDate;
  String get lastDate;
  String get name;
  List<String> get listExer;
  String get id;
  @JsonKey(ignore: true)
  _$$WorkoutHiveAddWorkoutEventImplCopyWith<_$WorkoutHiveAddWorkoutEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkoutHiveGetAllWorkoutEventImplCopyWith<$Res> {
  factory _$$WorkoutHiveGetAllWorkoutEventImplCopyWith(
          _$WorkoutHiveGetAllWorkoutEventImpl value,
          $Res Function(_$WorkoutHiveGetAllWorkoutEventImpl) then) =
      __$$WorkoutHiveGetAllWorkoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkoutHiveGetAllWorkoutEventImplCopyWithImpl<$Res>
    extends _$WorkoutHiveEventCopyWithImpl<$Res,
        _$WorkoutHiveGetAllWorkoutEventImpl>
    implements _$$WorkoutHiveGetAllWorkoutEventImplCopyWith<$Res> {
  __$$WorkoutHiveGetAllWorkoutEventImplCopyWithImpl(
      _$WorkoutHiveGetAllWorkoutEventImpl _value,
      $Res Function(_$WorkoutHiveGetAllWorkoutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WorkoutHiveGetAllWorkoutEventImpl
    implements WorkoutHiveGetAllWorkoutEvent {
  const _$WorkoutHiveGetAllWorkoutEventImpl();

  @override
  String toString() {
    return 'WorkoutHiveEvent.getAllWorkout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutHiveGetAllWorkoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ExerciseModel> listMeasures,
            String firstDate,
            String lastDate,
            String name,
            List<String> listExer,
            String id)
        addWorkout,
    required TResult Function() getAllWorkout,
    required TResult Function() deleteAllWorkout,
  }) {
    return getAllWorkout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ExerciseModel> listMeasures, String firstDate,
            String lastDate, String name, List<String> listExer, String id)?
        addWorkout,
    TResult? Function()? getAllWorkout,
    TResult? Function()? deleteAllWorkout,
  }) {
    return getAllWorkout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ExerciseModel> listMeasures, String firstDate,
            String lastDate, String name, List<String> listExer, String id)?
        addWorkout,
    TResult Function()? getAllWorkout,
    TResult Function()? deleteAllWorkout,
    required TResult orElse(),
  }) {
    if (getAllWorkout != null) {
      return getAllWorkout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutHiveAddWorkoutEvent value) addWorkout,
    required TResult Function(WorkoutHiveGetAllWorkoutEvent value)
        getAllWorkout,
    required TResult Function(WorkoutHiveDeleteAllWorkoutEvent value)
        deleteAllWorkout,
  }) {
    return getAllWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutHiveAddWorkoutEvent value)? addWorkout,
    TResult? Function(WorkoutHiveGetAllWorkoutEvent value)? getAllWorkout,
    TResult? Function(WorkoutHiveDeleteAllWorkoutEvent value)? deleteAllWorkout,
  }) {
    return getAllWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutHiveAddWorkoutEvent value)? addWorkout,
    TResult Function(WorkoutHiveGetAllWorkoutEvent value)? getAllWorkout,
    TResult Function(WorkoutHiveDeleteAllWorkoutEvent value)? deleteAllWorkout,
    required TResult orElse(),
  }) {
    if (getAllWorkout != null) {
      return getAllWorkout(this);
    }
    return orElse();
  }
}

abstract class WorkoutHiveGetAllWorkoutEvent implements WorkoutHiveEvent {
  const factory WorkoutHiveGetAllWorkoutEvent() =
      _$WorkoutHiveGetAllWorkoutEventImpl;
}

/// @nodoc
abstract class _$$WorkoutHiveDeleteAllWorkoutEventImplCopyWith<$Res> {
  factory _$$WorkoutHiveDeleteAllWorkoutEventImplCopyWith(
          _$WorkoutHiveDeleteAllWorkoutEventImpl value,
          $Res Function(_$WorkoutHiveDeleteAllWorkoutEventImpl) then) =
      __$$WorkoutHiveDeleteAllWorkoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkoutHiveDeleteAllWorkoutEventImplCopyWithImpl<$Res>
    extends _$WorkoutHiveEventCopyWithImpl<$Res,
        _$WorkoutHiveDeleteAllWorkoutEventImpl>
    implements _$$WorkoutHiveDeleteAllWorkoutEventImplCopyWith<$Res> {
  __$$WorkoutHiveDeleteAllWorkoutEventImplCopyWithImpl(
      _$WorkoutHiveDeleteAllWorkoutEventImpl _value,
      $Res Function(_$WorkoutHiveDeleteAllWorkoutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WorkoutHiveDeleteAllWorkoutEventImpl
    implements WorkoutHiveDeleteAllWorkoutEvent {
  const _$WorkoutHiveDeleteAllWorkoutEventImpl();

  @override
  String toString() {
    return 'WorkoutHiveEvent.deleteAllWorkout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutHiveDeleteAllWorkoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ExerciseModel> listMeasures,
            String firstDate,
            String lastDate,
            String name,
            List<String> listExer,
            String id)
        addWorkout,
    required TResult Function() getAllWorkout,
    required TResult Function() deleteAllWorkout,
  }) {
    return deleteAllWorkout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ExerciseModel> listMeasures, String firstDate,
            String lastDate, String name, List<String> listExer, String id)?
        addWorkout,
    TResult? Function()? getAllWorkout,
    TResult? Function()? deleteAllWorkout,
  }) {
    return deleteAllWorkout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ExerciseModel> listMeasures, String firstDate,
            String lastDate, String name, List<String> listExer, String id)?
        addWorkout,
    TResult Function()? getAllWorkout,
    TResult Function()? deleteAllWorkout,
    required TResult orElse(),
  }) {
    if (deleteAllWorkout != null) {
      return deleteAllWorkout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutHiveAddWorkoutEvent value) addWorkout,
    required TResult Function(WorkoutHiveGetAllWorkoutEvent value)
        getAllWorkout,
    required TResult Function(WorkoutHiveDeleteAllWorkoutEvent value)
        deleteAllWorkout,
  }) {
    return deleteAllWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutHiveAddWorkoutEvent value)? addWorkout,
    TResult? Function(WorkoutHiveGetAllWorkoutEvent value)? getAllWorkout,
    TResult? Function(WorkoutHiveDeleteAllWorkoutEvent value)? deleteAllWorkout,
  }) {
    return deleteAllWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutHiveAddWorkoutEvent value)? addWorkout,
    TResult Function(WorkoutHiveGetAllWorkoutEvent value)? getAllWorkout,
    TResult Function(WorkoutHiveDeleteAllWorkoutEvent value)? deleteAllWorkout,
    required TResult orElse(),
  }) {
    if (deleteAllWorkout != null) {
      return deleteAllWorkout(this);
    }
    return orElse();
  }
}

abstract class WorkoutHiveDeleteAllWorkoutEvent implements WorkoutHiveEvent {
  const factory WorkoutHiveDeleteAllWorkoutEvent() =
      _$WorkoutHiveDeleteAllWorkoutEventImpl;
}

/// @nodoc
mixin _$WorkoutHiveState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() deleted,
    required TResult Function(Workout workout) workoutCreated,
    required TResult Function(List<Workout> listWorkout) allWorkoutGetted,
    required TResult Function(Object exception) loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? deleted,
    TResult? Function(Workout workout)? workoutCreated,
    TResult? Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult? Function(Object exception)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? deleted,
    TResult Function(Workout workout)? workoutCreated,
    TResult Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutHiveInitialState value) initial,
    required TResult Function(_WorkoutHiveLoadingState value) loading,
    required TResult Function(_WorkoutHiveLoadedState value) loaded,
    required TResult Function(_WorkoutHiveDeletedState value) deleted,
    required TResult Function(_WorkoutHiveWorkoutCreatedState value)
        workoutCreated,
    required TResult Function(_WorkoutHiveAllWorkoutGettedState value)
        allWorkoutGetted,
    required TResult Function(_WorkoutHiveLoadingFailureState value)
        loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutHiveInitialState value)? initial,
    TResult? Function(_WorkoutHiveLoadingState value)? loading,
    TResult? Function(_WorkoutHiveLoadedState value)? loaded,
    TResult? Function(_WorkoutHiveDeletedState value)? deleted,
    TResult? Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult? Function(_WorkoutHiveAllWorkoutGettedState value)?
        allWorkoutGetted,
    TResult? Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutHiveInitialState value)? initial,
    TResult Function(_WorkoutHiveLoadingState value)? loading,
    TResult Function(_WorkoutHiveLoadedState value)? loaded,
    TResult Function(_WorkoutHiveDeletedState value)? deleted,
    TResult Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult Function(_WorkoutHiveAllWorkoutGettedState value)? allWorkoutGetted,
    TResult Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutHiveStateCopyWith<$Res> {
  factory $WorkoutHiveStateCopyWith(
          WorkoutHiveState value, $Res Function(WorkoutHiveState) then) =
      _$WorkoutHiveStateCopyWithImpl<$Res, WorkoutHiveState>;
}

/// @nodoc
class _$WorkoutHiveStateCopyWithImpl<$Res, $Val extends WorkoutHiveState>
    implements $WorkoutHiveStateCopyWith<$Res> {
  _$WorkoutHiveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WorkoutHiveInitialStateImplCopyWith<$Res> {
  factory _$$WorkoutHiveInitialStateImplCopyWith(
          _$WorkoutHiveInitialStateImpl value,
          $Res Function(_$WorkoutHiveInitialStateImpl) then) =
      __$$WorkoutHiveInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkoutHiveInitialStateImplCopyWithImpl<$Res>
    extends _$WorkoutHiveStateCopyWithImpl<$Res, _$WorkoutHiveInitialStateImpl>
    implements _$$WorkoutHiveInitialStateImplCopyWith<$Res> {
  __$$WorkoutHiveInitialStateImplCopyWithImpl(
      _$WorkoutHiveInitialStateImpl _value,
      $Res Function(_$WorkoutHiveInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WorkoutHiveInitialStateImpl implements _WorkoutHiveInitialState {
  const _$WorkoutHiveInitialStateImpl();

  @override
  String toString() {
    return 'WorkoutHiveState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutHiveInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() deleted,
    required TResult Function(Workout workout) workoutCreated,
    required TResult Function(List<Workout> listWorkout) allWorkoutGetted,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? deleted,
    TResult? Function(Workout workout)? workoutCreated,
    TResult? Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? deleted,
    TResult Function(Workout workout)? workoutCreated,
    TResult Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult Function(Object exception)? loadingFailure,
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
    required TResult Function(_WorkoutHiveInitialState value) initial,
    required TResult Function(_WorkoutHiveLoadingState value) loading,
    required TResult Function(_WorkoutHiveLoadedState value) loaded,
    required TResult Function(_WorkoutHiveDeletedState value) deleted,
    required TResult Function(_WorkoutHiveWorkoutCreatedState value)
        workoutCreated,
    required TResult Function(_WorkoutHiveAllWorkoutGettedState value)
        allWorkoutGetted,
    required TResult Function(_WorkoutHiveLoadingFailureState value)
        loadingFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutHiveInitialState value)? initial,
    TResult? Function(_WorkoutHiveLoadingState value)? loading,
    TResult? Function(_WorkoutHiveLoadedState value)? loaded,
    TResult? Function(_WorkoutHiveDeletedState value)? deleted,
    TResult? Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult? Function(_WorkoutHiveAllWorkoutGettedState value)?
        allWorkoutGetted,
    TResult? Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutHiveInitialState value)? initial,
    TResult Function(_WorkoutHiveLoadingState value)? loading,
    TResult Function(_WorkoutHiveLoadedState value)? loaded,
    TResult Function(_WorkoutHiveDeletedState value)? deleted,
    TResult Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult Function(_WorkoutHiveAllWorkoutGettedState value)? allWorkoutGetted,
    TResult Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHiveInitialState implements WorkoutHiveState {
  const factory _WorkoutHiveInitialState() = _$WorkoutHiveInitialStateImpl;
}

/// @nodoc
abstract class _$$WorkoutHiveLoadingStateImplCopyWith<$Res> {
  factory _$$WorkoutHiveLoadingStateImplCopyWith(
          _$WorkoutHiveLoadingStateImpl value,
          $Res Function(_$WorkoutHiveLoadingStateImpl) then) =
      __$$WorkoutHiveLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkoutHiveLoadingStateImplCopyWithImpl<$Res>
    extends _$WorkoutHiveStateCopyWithImpl<$Res, _$WorkoutHiveLoadingStateImpl>
    implements _$$WorkoutHiveLoadingStateImplCopyWith<$Res> {
  __$$WorkoutHiveLoadingStateImplCopyWithImpl(
      _$WorkoutHiveLoadingStateImpl _value,
      $Res Function(_$WorkoutHiveLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WorkoutHiveLoadingStateImpl implements _WorkoutHiveLoadingState {
  const _$WorkoutHiveLoadingStateImpl();

  @override
  String toString() {
    return 'WorkoutHiveState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutHiveLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() deleted,
    required TResult Function(Workout workout) workoutCreated,
    required TResult Function(List<Workout> listWorkout) allWorkoutGetted,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? deleted,
    TResult? Function(Workout workout)? workoutCreated,
    TResult? Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? deleted,
    TResult Function(Workout workout)? workoutCreated,
    TResult Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult Function(Object exception)? loadingFailure,
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
    required TResult Function(_WorkoutHiveInitialState value) initial,
    required TResult Function(_WorkoutHiveLoadingState value) loading,
    required TResult Function(_WorkoutHiveLoadedState value) loaded,
    required TResult Function(_WorkoutHiveDeletedState value) deleted,
    required TResult Function(_WorkoutHiveWorkoutCreatedState value)
        workoutCreated,
    required TResult Function(_WorkoutHiveAllWorkoutGettedState value)
        allWorkoutGetted,
    required TResult Function(_WorkoutHiveLoadingFailureState value)
        loadingFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutHiveInitialState value)? initial,
    TResult? Function(_WorkoutHiveLoadingState value)? loading,
    TResult? Function(_WorkoutHiveLoadedState value)? loaded,
    TResult? Function(_WorkoutHiveDeletedState value)? deleted,
    TResult? Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult? Function(_WorkoutHiveAllWorkoutGettedState value)?
        allWorkoutGetted,
    TResult? Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutHiveInitialState value)? initial,
    TResult Function(_WorkoutHiveLoadingState value)? loading,
    TResult Function(_WorkoutHiveLoadedState value)? loaded,
    TResult Function(_WorkoutHiveDeletedState value)? deleted,
    TResult Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult Function(_WorkoutHiveAllWorkoutGettedState value)? allWorkoutGetted,
    TResult Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHiveLoadingState implements WorkoutHiveState {
  const factory _WorkoutHiveLoadingState() = _$WorkoutHiveLoadingStateImpl;
}

/// @nodoc
abstract class _$$WorkoutHiveLoadedStateImplCopyWith<$Res> {
  factory _$$WorkoutHiveLoadedStateImplCopyWith(
          _$WorkoutHiveLoadedStateImpl value,
          $Res Function(_$WorkoutHiveLoadedStateImpl) then) =
      __$$WorkoutHiveLoadedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkoutHiveLoadedStateImplCopyWithImpl<$Res>
    extends _$WorkoutHiveStateCopyWithImpl<$Res, _$WorkoutHiveLoadedStateImpl>
    implements _$$WorkoutHiveLoadedStateImplCopyWith<$Res> {
  __$$WorkoutHiveLoadedStateImplCopyWithImpl(
      _$WorkoutHiveLoadedStateImpl _value,
      $Res Function(_$WorkoutHiveLoadedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WorkoutHiveLoadedStateImpl implements _WorkoutHiveLoadedState {
  const _$WorkoutHiveLoadedStateImpl();

  @override
  String toString() {
    return 'WorkoutHiveState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutHiveLoadedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() deleted,
    required TResult Function(Workout workout) workoutCreated,
    required TResult Function(List<Workout> listWorkout) allWorkoutGetted,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? deleted,
    TResult? Function(Workout workout)? workoutCreated,
    TResult? Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? deleted,
    TResult Function(Workout workout)? workoutCreated,
    TResult Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutHiveInitialState value) initial,
    required TResult Function(_WorkoutHiveLoadingState value) loading,
    required TResult Function(_WorkoutHiveLoadedState value) loaded,
    required TResult Function(_WorkoutHiveDeletedState value) deleted,
    required TResult Function(_WorkoutHiveWorkoutCreatedState value)
        workoutCreated,
    required TResult Function(_WorkoutHiveAllWorkoutGettedState value)
        allWorkoutGetted,
    required TResult Function(_WorkoutHiveLoadingFailureState value)
        loadingFailure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutHiveInitialState value)? initial,
    TResult? Function(_WorkoutHiveLoadingState value)? loading,
    TResult? Function(_WorkoutHiveLoadedState value)? loaded,
    TResult? Function(_WorkoutHiveDeletedState value)? deleted,
    TResult? Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult? Function(_WorkoutHiveAllWorkoutGettedState value)?
        allWorkoutGetted,
    TResult? Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutHiveInitialState value)? initial,
    TResult Function(_WorkoutHiveLoadingState value)? loading,
    TResult Function(_WorkoutHiveLoadedState value)? loaded,
    TResult Function(_WorkoutHiveDeletedState value)? deleted,
    TResult Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult Function(_WorkoutHiveAllWorkoutGettedState value)? allWorkoutGetted,
    TResult Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHiveLoadedState implements WorkoutHiveState {
  const factory _WorkoutHiveLoadedState() = _$WorkoutHiveLoadedStateImpl;
}

/// @nodoc
abstract class _$$WorkoutHiveDeletedStateImplCopyWith<$Res> {
  factory _$$WorkoutHiveDeletedStateImplCopyWith(
          _$WorkoutHiveDeletedStateImpl value,
          $Res Function(_$WorkoutHiveDeletedStateImpl) then) =
      __$$WorkoutHiveDeletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkoutHiveDeletedStateImplCopyWithImpl<$Res>
    extends _$WorkoutHiveStateCopyWithImpl<$Res, _$WorkoutHiveDeletedStateImpl>
    implements _$$WorkoutHiveDeletedStateImplCopyWith<$Res> {
  __$$WorkoutHiveDeletedStateImplCopyWithImpl(
      _$WorkoutHiveDeletedStateImpl _value,
      $Res Function(_$WorkoutHiveDeletedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WorkoutHiveDeletedStateImpl implements _WorkoutHiveDeletedState {
  const _$WorkoutHiveDeletedStateImpl();

  @override
  String toString() {
    return 'WorkoutHiveState.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutHiveDeletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() deleted,
    required TResult Function(Workout workout) workoutCreated,
    required TResult Function(List<Workout> listWorkout) allWorkoutGetted,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? deleted,
    TResult? Function(Workout workout)? workoutCreated,
    TResult? Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? deleted,
    TResult Function(Workout workout)? workoutCreated,
    TResult Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutHiveInitialState value) initial,
    required TResult Function(_WorkoutHiveLoadingState value) loading,
    required TResult Function(_WorkoutHiveLoadedState value) loaded,
    required TResult Function(_WorkoutHiveDeletedState value) deleted,
    required TResult Function(_WorkoutHiveWorkoutCreatedState value)
        workoutCreated,
    required TResult Function(_WorkoutHiveAllWorkoutGettedState value)
        allWorkoutGetted,
    required TResult Function(_WorkoutHiveLoadingFailureState value)
        loadingFailure,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutHiveInitialState value)? initial,
    TResult? Function(_WorkoutHiveLoadingState value)? loading,
    TResult? Function(_WorkoutHiveLoadedState value)? loaded,
    TResult? Function(_WorkoutHiveDeletedState value)? deleted,
    TResult? Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult? Function(_WorkoutHiveAllWorkoutGettedState value)?
        allWorkoutGetted,
    TResult? Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutHiveInitialState value)? initial,
    TResult Function(_WorkoutHiveLoadingState value)? loading,
    TResult Function(_WorkoutHiveLoadedState value)? loaded,
    TResult Function(_WorkoutHiveDeletedState value)? deleted,
    TResult Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult Function(_WorkoutHiveAllWorkoutGettedState value)? allWorkoutGetted,
    TResult Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHiveDeletedState implements WorkoutHiveState {
  const factory _WorkoutHiveDeletedState() = _$WorkoutHiveDeletedStateImpl;
}

/// @nodoc
abstract class _$$WorkoutHiveWorkoutCreatedStateImplCopyWith<$Res> {
  factory _$$WorkoutHiveWorkoutCreatedStateImplCopyWith(
          _$WorkoutHiveWorkoutCreatedStateImpl value,
          $Res Function(_$WorkoutHiveWorkoutCreatedStateImpl) then) =
      __$$WorkoutHiveWorkoutCreatedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Workout workout});
}

/// @nodoc
class __$$WorkoutHiveWorkoutCreatedStateImplCopyWithImpl<$Res>
    extends _$WorkoutHiveStateCopyWithImpl<$Res,
        _$WorkoutHiveWorkoutCreatedStateImpl>
    implements _$$WorkoutHiveWorkoutCreatedStateImplCopyWith<$Res> {
  __$$WorkoutHiveWorkoutCreatedStateImplCopyWithImpl(
      _$WorkoutHiveWorkoutCreatedStateImpl _value,
      $Res Function(_$WorkoutHiveWorkoutCreatedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
  }) {
    return _then(_$WorkoutHiveWorkoutCreatedStateImpl(
      workout: null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout,
    ));
  }
}

/// @nodoc

class _$WorkoutHiveWorkoutCreatedStateImpl
    implements _WorkoutHiveWorkoutCreatedState {
  const _$WorkoutHiveWorkoutCreatedStateImpl({required this.workout});

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutHiveState.workoutCreated(workout: $workout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutHiveWorkoutCreatedStateImpl &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutHiveWorkoutCreatedStateImplCopyWith<
          _$WorkoutHiveWorkoutCreatedStateImpl>
      get copyWith => __$$WorkoutHiveWorkoutCreatedStateImplCopyWithImpl<
          _$WorkoutHiveWorkoutCreatedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() deleted,
    required TResult Function(Workout workout) workoutCreated,
    required TResult Function(List<Workout> listWorkout) allWorkoutGetted,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return workoutCreated(workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? deleted,
    TResult? Function(Workout workout)? workoutCreated,
    TResult? Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return workoutCreated?.call(workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? deleted,
    TResult Function(Workout workout)? workoutCreated,
    TResult Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) {
    if (workoutCreated != null) {
      return workoutCreated(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutHiveInitialState value) initial,
    required TResult Function(_WorkoutHiveLoadingState value) loading,
    required TResult Function(_WorkoutHiveLoadedState value) loaded,
    required TResult Function(_WorkoutHiveDeletedState value) deleted,
    required TResult Function(_WorkoutHiveWorkoutCreatedState value)
        workoutCreated,
    required TResult Function(_WorkoutHiveAllWorkoutGettedState value)
        allWorkoutGetted,
    required TResult Function(_WorkoutHiveLoadingFailureState value)
        loadingFailure,
  }) {
    return workoutCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutHiveInitialState value)? initial,
    TResult? Function(_WorkoutHiveLoadingState value)? loading,
    TResult? Function(_WorkoutHiveLoadedState value)? loaded,
    TResult? Function(_WorkoutHiveDeletedState value)? deleted,
    TResult? Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult? Function(_WorkoutHiveAllWorkoutGettedState value)?
        allWorkoutGetted,
    TResult? Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
  }) {
    return workoutCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutHiveInitialState value)? initial,
    TResult Function(_WorkoutHiveLoadingState value)? loading,
    TResult Function(_WorkoutHiveLoadedState value)? loaded,
    TResult Function(_WorkoutHiveDeletedState value)? deleted,
    TResult Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult Function(_WorkoutHiveAllWorkoutGettedState value)? allWorkoutGetted,
    TResult Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (workoutCreated != null) {
      return workoutCreated(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHiveWorkoutCreatedState implements WorkoutHiveState {
  const factory _WorkoutHiveWorkoutCreatedState(
      {required final Workout workout}) = _$WorkoutHiveWorkoutCreatedStateImpl;

  Workout get workout;
  @JsonKey(ignore: true)
  _$$WorkoutHiveWorkoutCreatedStateImplCopyWith<
          _$WorkoutHiveWorkoutCreatedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkoutHiveAllWorkoutGettedStateImplCopyWith<$Res> {
  factory _$$WorkoutHiveAllWorkoutGettedStateImplCopyWith(
          _$WorkoutHiveAllWorkoutGettedStateImpl value,
          $Res Function(_$WorkoutHiveAllWorkoutGettedStateImpl) then) =
      __$$WorkoutHiveAllWorkoutGettedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Workout> listWorkout});
}

/// @nodoc
class __$$WorkoutHiveAllWorkoutGettedStateImplCopyWithImpl<$Res>
    extends _$WorkoutHiveStateCopyWithImpl<$Res,
        _$WorkoutHiveAllWorkoutGettedStateImpl>
    implements _$$WorkoutHiveAllWorkoutGettedStateImplCopyWith<$Res> {
  __$$WorkoutHiveAllWorkoutGettedStateImplCopyWithImpl(
      _$WorkoutHiveAllWorkoutGettedStateImpl _value,
      $Res Function(_$WorkoutHiveAllWorkoutGettedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listWorkout = null,
  }) {
    return _then(_$WorkoutHiveAllWorkoutGettedStateImpl(
      listWorkout: null == listWorkout
          ? _value._listWorkout
          : listWorkout // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
    ));
  }
}

/// @nodoc

class _$WorkoutHiveAllWorkoutGettedStateImpl
    implements _WorkoutHiveAllWorkoutGettedState {
  const _$WorkoutHiveAllWorkoutGettedStateImpl(
      {required final List<Workout> listWorkout})
      : _listWorkout = listWorkout;

  final List<Workout> _listWorkout;
  @override
  List<Workout> get listWorkout {
    if (_listWorkout is EqualUnmodifiableListView) return _listWorkout;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listWorkout);
  }

  @override
  String toString() {
    return 'WorkoutHiveState.allWorkoutGetted(listWorkout: $listWorkout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutHiveAllWorkoutGettedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listWorkout, _listWorkout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listWorkout));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutHiveAllWorkoutGettedStateImplCopyWith<
          _$WorkoutHiveAllWorkoutGettedStateImpl>
      get copyWith => __$$WorkoutHiveAllWorkoutGettedStateImplCopyWithImpl<
          _$WorkoutHiveAllWorkoutGettedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() deleted,
    required TResult Function(Workout workout) workoutCreated,
    required TResult Function(List<Workout> listWorkout) allWorkoutGetted,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return allWorkoutGetted(listWorkout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? deleted,
    TResult? Function(Workout workout)? workoutCreated,
    TResult? Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return allWorkoutGetted?.call(listWorkout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? deleted,
    TResult Function(Workout workout)? workoutCreated,
    TResult Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) {
    if (allWorkoutGetted != null) {
      return allWorkoutGetted(listWorkout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutHiveInitialState value) initial,
    required TResult Function(_WorkoutHiveLoadingState value) loading,
    required TResult Function(_WorkoutHiveLoadedState value) loaded,
    required TResult Function(_WorkoutHiveDeletedState value) deleted,
    required TResult Function(_WorkoutHiveWorkoutCreatedState value)
        workoutCreated,
    required TResult Function(_WorkoutHiveAllWorkoutGettedState value)
        allWorkoutGetted,
    required TResult Function(_WorkoutHiveLoadingFailureState value)
        loadingFailure,
  }) {
    return allWorkoutGetted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutHiveInitialState value)? initial,
    TResult? Function(_WorkoutHiveLoadingState value)? loading,
    TResult? Function(_WorkoutHiveLoadedState value)? loaded,
    TResult? Function(_WorkoutHiveDeletedState value)? deleted,
    TResult? Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult? Function(_WorkoutHiveAllWorkoutGettedState value)?
        allWorkoutGetted,
    TResult? Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
  }) {
    return allWorkoutGetted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutHiveInitialState value)? initial,
    TResult Function(_WorkoutHiveLoadingState value)? loading,
    TResult Function(_WorkoutHiveLoadedState value)? loaded,
    TResult Function(_WorkoutHiveDeletedState value)? deleted,
    TResult Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult Function(_WorkoutHiveAllWorkoutGettedState value)? allWorkoutGetted,
    TResult Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (allWorkoutGetted != null) {
      return allWorkoutGetted(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHiveAllWorkoutGettedState implements WorkoutHiveState {
  const factory _WorkoutHiveAllWorkoutGettedState(
          {required final List<Workout> listWorkout}) =
      _$WorkoutHiveAllWorkoutGettedStateImpl;

  List<Workout> get listWorkout;
  @JsonKey(ignore: true)
  _$$WorkoutHiveAllWorkoutGettedStateImplCopyWith<
          _$WorkoutHiveAllWorkoutGettedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkoutHiveLoadingFailureStateImplCopyWith<$Res> {
  factory _$$WorkoutHiveLoadingFailureStateImplCopyWith(
          _$WorkoutHiveLoadingFailureStateImpl value,
          $Res Function(_$WorkoutHiveLoadingFailureStateImpl) then) =
      __$$WorkoutHiveLoadingFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object exception});
}

/// @nodoc
class __$$WorkoutHiveLoadingFailureStateImplCopyWithImpl<$Res>
    extends _$WorkoutHiveStateCopyWithImpl<$Res,
        _$WorkoutHiveLoadingFailureStateImpl>
    implements _$$WorkoutHiveLoadingFailureStateImplCopyWith<$Res> {
  __$$WorkoutHiveLoadingFailureStateImplCopyWithImpl(
      _$WorkoutHiveLoadingFailureStateImpl _value,
      $Res Function(_$WorkoutHiveLoadingFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$WorkoutHiveLoadingFailureStateImpl(
      exception: null == exception ? _value.exception : exception,
    ));
  }
}

/// @nodoc

class _$WorkoutHiveLoadingFailureStateImpl
    implements _WorkoutHiveLoadingFailureState {
  const _$WorkoutHiveLoadingFailureStateImpl({required this.exception});

  @override
  final Object exception;

  @override
  String toString() {
    return 'WorkoutHiveState.loadingFailure(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutHiveLoadingFailureStateImpl &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutHiveLoadingFailureStateImplCopyWith<
          _$WorkoutHiveLoadingFailureStateImpl>
      get copyWith => __$$WorkoutHiveLoadingFailureStateImplCopyWithImpl<
          _$WorkoutHiveLoadingFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() deleted,
    required TResult Function(Workout workout) workoutCreated,
    required TResult Function(List<Workout> listWorkout) allWorkoutGetted,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return loadingFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? deleted,
    TResult? Function(Workout workout)? workoutCreated,
    TResult? Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return loadingFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? deleted,
    TResult Function(Workout workout)? workoutCreated,
    TResult Function(List<Workout> listWorkout)? allWorkoutGetted,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingFailure != null) {
      return loadingFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutHiveInitialState value) initial,
    required TResult Function(_WorkoutHiveLoadingState value) loading,
    required TResult Function(_WorkoutHiveLoadedState value) loaded,
    required TResult Function(_WorkoutHiveDeletedState value) deleted,
    required TResult Function(_WorkoutHiveWorkoutCreatedState value)
        workoutCreated,
    required TResult Function(_WorkoutHiveAllWorkoutGettedState value)
        allWorkoutGetted,
    required TResult Function(_WorkoutHiveLoadingFailureState value)
        loadingFailure,
  }) {
    return loadingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutHiveInitialState value)? initial,
    TResult? Function(_WorkoutHiveLoadingState value)? loading,
    TResult? Function(_WorkoutHiveLoadedState value)? loaded,
    TResult? Function(_WorkoutHiveDeletedState value)? deleted,
    TResult? Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult? Function(_WorkoutHiveAllWorkoutGettedState value)?
        allWorkoutGetted,
    TResult? Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
  }) {
    return loadingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutHiveInitialState value)? initial,
    TResult Function(_WorkoutHiveLoadingState value)? loading,
    TResult Function(_WorkoutHiveLoadedState value)? loaded,
    TResult Function(_WorkoutHiveDeletedState value)? deleted,
    TResult Function(_WorkoutHiveWorkoutCreatedState value)? workoutCreated,
    TResult Function(_WorkoutHiveAllWorkoutGettedState value)? allWorkoutGetted,
    TResult Function(_WorkoutHiveLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingFailure != null) {
      return loadingFailure(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHiveLoadingFailureState implements WorkoutHiveState {
  const factory _WorkoutHiveLoadingFailureState(
      {required final Object exception}) = _$WorkoutHiveLoadingFailureStateImpl;

  Object get exception;
  @JsonKey(ignore: true)
  _$$WorkoutHiveLoadingFailureStateImplCopyWith<
          _$WorkoutHiveLoadingFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
