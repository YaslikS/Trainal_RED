part of 'sync_workout_bloc.dart';

@freezed
class SyncWorkoutState with _$SyncWorkoutState {
  const factory SyncWorkoutState.initial() = _SyncWorkoutInitialState;

  const factory SyncWorkoutState.loading() = _SyncWorkoutLoadingState;

  const factory SyncWorkoutState.loaded({
    required List<Workout> workouts,
  }) = _SyncWorkoutLoadedState;

  const factory SyncWorkoutState.loadingFailure({required Object exception}) =
      _SyncWorkoutLoadingFailureState;
}
