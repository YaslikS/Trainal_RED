// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SyncWorkoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() syncWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? syncWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? syncWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(syncWorkoutSyncWorkoutEvent value) syncWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(syncWorkoutSyncWorkoutEvent value)? syncWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(syncWorkoutSyncWorkoutEvent value)? syncWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncWorkoutEventCopyWith<$Res> {
  factory $SyncWorkoutEventCopyWith(
          SyncWorkoutEvent value, $Res Function(SyncWorkoutEvent) then) =
      _$SyncWorkoutEventCopyWithImpl<$Res, SyncWorkoutEvent>;
}

/// @nodoc
class _$SyncWorkoutEventCopyWithImpl<$Res, $Val extends SyncWorkoutEvent>
    implements $SyncWorkoutEventCopyWith<$Res> {
  _$SyncWorkoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$syncWorkoutSyncWorkoutEventImplCopyWith<$Res> {
  factory _$$syncWorkoutSyncWorkoutEventImplCopyWith(
          _$syncWorkoutSyncWorkoutEventImpl value,
          $Res Function(_$syncWorkoutSyncWorkoutEventImpl) then) =
      __$$syncWorkoutSyncWorkoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$syncWorkoutSyncWorkoutEventImplCopyWithImpl<$Res>
    extends _$SyncWorkoutEventCopyWithImpl<$Res,
        _$syncWorkoutSyncWorkoutEventImpl>
    implements _$$syncWorkoutSyncWorkoutEventImplCopyWith<$Res> {
  __$$syncWorkoutSyncWorkoutEventImplCopyWithImpl(
      _$syncWorkoutSyncWorkoutEventImpl _value,
      $Res Function(_$syncWorkoutSyncWorkoutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$syncWorkoutSyncWorkoutEventImpl implements syncWorkoutSyncWorkoutEvent {
  const _$syncWorkoutSyncWorkoutEventImpl();

  @override
  String toString() {
    return 'SyncWorkoutEvent.syncWorkout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$syncWorkoutSyncWorkoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() syncWorkout,
  }) {
    return syncWorkout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? syncWorkout,
  }) {
    return syncWorkout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? syncWorkout,
    required TResult orElse(),
  }) {
    if (syncWorkout != null) {
      return syncWorkout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(syncWorkoutSyncWorkoutEvent value) syncWorkout,
  }) {
    return syncWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(syncWorkoutSyncWorkoutEvent value)? syncWorkout,
  }) {
    return syncWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(syncWorkoutSyncWorkoutEvent value)? syncWorkout,
    required TResult orElse(),
  }) {
    if (syncWorkout != null) {
      return syncWorkout(this);
    }
    return orElse();
  }
}

abstract class syncWorkoutSyncWorkoutEvent implements SyncWorkoutEvent {
  const factory syncWorkoutSyncWorkoutEvent() =
      _$syncWorkoutSyncWorkoutEventImpl;
}

/// @nodoc
mixin _$SyncWorkoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(Object exception) loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(Object exception)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Workout> workouts)? loaded,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncWorkoutInitialState value) initial,
    required TResult Function(_SyncWorkoutLoadingState value) loading,
    required TResult Function(_SyncWorkoutLoadedState value) loaded,
    required TResult Function(_SyncWorkoutLoadingFailureState value)
        loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncWorkoutInitialState value)? initial,
    TResult? Function(_SyncWorkoutLoadingState value)? loading,
    TResult? Function(_SyncWorkoutLoadedState value)? loaded,
    TResult? Function(_SyncWorkoutLoadingFailureState value)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncWorkoutInitialState value)? initial,
    TResult Function(_SyncWorkoutLoadingState value)? loading,
    TResult Function(_SyncWorkoutLoadedState value)? loaded,
    TResult Function(_SyncWorkoutLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncWorkoutStateCopyWith<$Res> {
  factory $SyncWorkoutStateCopyWith(
          SyncWorkoutState value, $Res Function(SyncWorkoutState) then) =
      _$SyncWorkoutStateCopyWithImpl<$Res, SyncWorkoutState>;
}

/// @nodoc
class _$SyncWorkoutStateCopyWithImpl<$Res, $Val extends SyncWorkoutState>
    implements $SyncWorkoutStateCopyWith<$Res> {
  _$SyncWorkoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SyncWorkoutInitialStateImplCopyWith<$Res> {
  factory _$$SyncWorkoutInitialStateImplCopyWith(
          _$SyncWorkoutInitialStateImpl value,
          $Res Function(_$SyncWorkoutInitialStateImpl) then) =
      __$$SyncWorkoutInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncWorkoutInitialStateImplCopyWithImpl<$Res>
    extends _$SyncWorkoutStateCopyWithImpl<$Res, _$SyncWorkoutInitialStateImpl>
    implements _$$SyncWorkoutInitialStateImplCopyWith<$Res> {
  __$$SyncWorkoutInitialStateImplCopyWithImpl(
      _$SyncWorkoutInitialStateImpl _value,
      $Res Function(_$SyncWorkoutInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SyncWorkoutInitialStateImpl implements _SyncWorkoutInitialState {
  const _$SyncWorkoutInitialStateImpl();

  @override
  String toString() {
    return 'SyncWorkoutState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncWorkoutInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Workout> workouts)? loaded,
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
    required TResult Function(_SyncWorkoutInitialState value) initial,
    required TResult Function(_SyncWorkoutLoadingState value) loading,
    required TResult Function(_SyncWorkoutLoadedState value) loaded,
    required TResult Function(_SyncWorkoutLoadingFailureState value)
        loadingFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncWorkoutInitialState value)? initial,
    TResult? Function(_SyncWorkoutLoadingState value)? loading,
    TResult? Function(_SyncWorkoutLoadedState value)? loaded,
    TResult? Function(_SyncWorkoutLoadingFailureState value)? loadingFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncWorkoutInitialState value)? initial,
    TResult Function(_SyncWorkoutLoadingState value)? loading,
    TResult Function(_SyncWorkoutLoadedState value)? loaded,
    TResult Function(_SyncWorkoutLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SyncWorkoutInitialState implements SyncWorkoutState {
  const factory _SyncWorkoutInitialState() = _$SyncWorkoutInitialStateImpl;
}

/// @nodoc
abstract class _$$SyncWorkoutLoadingStateImplCopyWith<$Res> {
  factory _$$SyncWorkoutLoadingStateImplCopyWith(
          _$SyncWorkoutLoadingStateImpl value,
          $Res Function(_$SyncWorkoutLoadingStateImpl) then) =
      __$$SyncWorkoutLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncWorkoutLoadingStateImplCopyWithImpl<$Res>
    extends _$SyncWorkoutStateCopyWithImpl<$Res, _$SyncWorkoutLoadingStateImpl>
    implements _$$SyncWorkoutLoadingStateImplCopyWith<$Res> {
  __$$SyncWorkoutLoadingStateImplCopyWithImpl(
      _$SyncWorkoutLoadingStateImpl _value,
      $Res Function(_$SyncWorkoutLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SyncWorkoutLoadingStateImpl implements _SyncWorkoutLoadingState {
  const _$SyncWorkoutLoadingStateImpl();

  @override
  String toString() {
    return 'SyncWorkoutState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncWorkoutLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Workout> workouts)? loaded,
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
    required TResult Function(_SyncWorkoutInitialState value) initial,
    required TResult Function(_SyncWorkoutLoadingState value) loading,
    required TResult Function(_SyncWorkoutLoadedState value) loaded,
    required TResult Function(_SyncWorkoutLoadingFailureState value)
        loadingFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncWorkoutInitialState value)? initial,
    TResult? Function(_SyncWorkoutLoadingState value)? loading,
    TResult? Function(_SyncWorkoutLoadedState value)? loaded,
    TResult? Function(_SyncWorkoutLoadingFailureState value)? loadingFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncWorkoutInitialState value)? initial,
    TResult Function(_SyncWorkoutLoadingState value)? loading,
    TResult Function(_SyncWorkoutLoadedState value)? loaded,
    TResult Function(_SyncWorkoutLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SyncWorkoutLoadingState implements SyncWorkoutState {
  const factory _SyncWorkoutLoadingState() = _$SyncWorkoutLoadingStateImpl;
}

/// @nodoc
abstract class _$$SyncWorkoutLoadedStateImplCopyWith<$Res> {
  factory _$$SyncWorkoutLoadedStateImplCopyWith(
          _$SyncWorkoutLoadedStateImpl value,
          $Res Function(_$SyncWorkoutLoadedStateImpl) then) =
      __$$SyncWorkoutLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Workout> workouts});
}

/// @nodoc
class __$$SyncWorkoutLoadedStateImplCopyWithImpl<$Res>
    extends _$SyncWorkoutStateCopyWithImpl<$Res, _$SyncWorkoutLoadedStateImpl>
    implements _$$SyncWorkoutLoadedStateImplCopyWith<$Res> {
  __$$SyncWorkoutLoadedStateImplCopyWithImpl(
      _$SyncWorkoutLoadedStateImpl _value,
      $Res Function(_$SyncWorkoutLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workouts = null,
  }) {
    return _then(_$SyncWorkoutLoadedStateImpl(
      workouts: null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
    ));
  }
}

/// @nodoc

class _$SyncWorkoutLoadedStateImpl implements _SyncWorkoutLoadedState {
  const _$SyncWorkoutLoadedStateImpl({required final List<Workout> workouts})
      : _workouts = workouts;

  final List<Workout> _workouts;
  @override
  List<Workout> get workouts {
    if (_workouts is EqualUnmodifiableListView) return _workouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workouts);
  }

  @override
  String toString() {
    return 'SyncWorkoutState.loaded(workouts: $workouts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncWorkoutLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._workouts, _workouts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_workouts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncWorkoutLoadedStateImplCopyWith<_$SyncWorkoutLoadedStateImpl>
      get copyWith => __$$SyncWorkoutLoadedStateImplCopyWithImpl<
          _$SyncWorkoutLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return loaded(workouts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return loaded?.call(workouts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Workout> workouts)? loaded,
    TResult Function(Object exception)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(workouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncWorkoutInitialState value) initial,
    required TResult Function(_SyncWorkoutLoadingState value) loading,
    required TResult Function(_SyncWorkoutLoadedState value) loaded,
    required TResult Function(_SyncWorkoutLoadingFailureState value)
        loadingFailure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncWorkoutInitialState value)? initial,
    TResult? Function(_SyncWorkoutLoadingState value)? loading,
    TResult? Function(_SyncWorkoutLoadedState value)? loaded,
    TResult? Function(_SyncWorkoutLoadingFailureState value)? loadingFailure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncWorkoutInitialState value)? initial,
    TResult Function(_SyncWorkoutLoadingState value)? loading,
    TResult Function(_SyncWorkoutLoadedState value)? loaded,
    TResult Function(_SyncWorkoutLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SyncWorkoutLoadedState implements SyncWorkoutState {
  const factory _SyncWorkoutLoadedState(
      {required final List<Workout> workouts}) = _$SyncWorkoutLoadedStateImpl;

  List<Workout> get workouts;
  @JsonKey(ignore: true)
  _$$SyncWorkoutLoadedStateImplCopyWith<_$SyncWorkoutLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncWorkoutLoadingFailureStateImplCopyWith<$Res> {
  factory _$$SyncWorkoutLoadingFailureStateImplCopyWith(
          _$SyncWorkoutLoadingFailureStateImpl value,
          $Res Function(_$SyncWorkoutLoadingFailureStateImpl) then) =
      __$$SyncWorkoutLoadingFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object exception});
}

/// @nodoc
class __$$SyncWorkoutLoadingFailureStateImplCopyWithImpl<$Res>
    extends _$SyncWorkoutStateCopyWithImpl<$Res,
        _$SyncWorkoutLoadingFailureStateImpl>
    implements _$$SyncWorkoutLoadingFailureStateImplCopyWith<$Res> {
  __$$SyncWorkoutLoadingFailureStateImplCopyWithImpl(
      _$SyncWorkoutLoadingFailureStateImpl _value,
      $Res Function(_$SyncWorkoutLoadingFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$SyncWorkoutLoadingFailureStateImpl(
      exception: null == exception ? _value.exception : exception,
    ));
  }
}

/// @nodoc

class _$SyncWorkoutLoadingFailureStateImpl
    implements _SyncWorkoutLoadingFailureState {
  const _$SyncWorkoutLoadingFailureStateImpl({required this.exception});

  @override
  final Object exception;

  @override
  String toString() {
    return 'SyncWorkoutState.loadingFailure(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncWorkoutLoadingFailureStateImpl &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncWorkoutLoadingFailureStateImplCopyWith<
          _$SyncWorkoutLoadingFailureStateImpl>
      get copyWith => __$$SyncWorkoutLoadingFailureStateImplCopyWithImpl<
          _$SyncWorkoutLoadingFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(Object exception) loadingFailure,
  }) {
    return loadingFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(Object exception)? loadingFailure,
  }) {
    return loadingFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Workout> workouts)? loaded,
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
    required TResult Function(_SyncWorkoutInitialState value) initial,
    required TResult Function(_SyncWorkoutLoadingState value) loading,
    required TResult Function(_SyncWorkoutLoadedState value) loaded,
    required TResult Function(_SyncWorkoutLoadingFailureState value)
        loadingFailure,
  }) {
    return loadingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncWorkoutInitialState value)? initial,
    TResult? Function(_SyncWorkoutLoadingState value)? loading,
    TResult? Function(_SyncWorkoutLoadedState value)? loaded,
    TResult? Function(_SyncWorkoutLoadingFailureState value)? loadingFailure,
  }) {
    return loadingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncWorkoutInitialState value)? initial,
    TResult Function(_SyncWorkoutLoadingState value)? loading,
    TResult Function(_SyncWorkoutLoadedState value)? loaded,
    TResult Function(_SyncWorkoutLoadingFailureState value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingFailure != null) {
      return loadingFailure(this);
    }
    return orElse();
  }
}

abstract class _SyncWorkoutLoadingFailureState implements SyncWorkoutState {
  const factory _SyncWorkoutLoadingFailureState(
      {required final Object exception}) = _$SyncWorkoutLoadingFailureStateImpl;

  Object get exception;
  @JsonKey(ignore: true)
  _$$SyncWorkoutLoadingFailureStateImplCopyWith<
          _$SyncWorkoutLoadingFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
