part of 'workout_hive_bloc.dart';

@freezed
class WorkoutHiveState with _$WorkoutHiveState {
  const factory WorkoutHiveState.initial() = _WorkoutHiveInitialState;

  const factory WorkoutHiveState.loading() = _WorkoutHiveLoadingState;

  const factory WorkoutHiveState.loaded() = _WorkoutHiveLoadedState;

  const factory WorkoutHiveState.deleted() = _WorkoutHiveDeletedState;

  const factory WorkoutHiveState.workoutCreated({required Workout workout}) =
      _WorkoutHiveWorkoutCreatedState;

  const factory WorkoutHiveState.allWorkoutGetted({
    required List<Workout> listWorkout,
  }) = _WorkoutHiveAllWorkoutGettedState;

  const factory WorkoutHiveState.loadingFailure({required Object exception}) =
      _WorkoutHiveLoadingFailureState;
}
