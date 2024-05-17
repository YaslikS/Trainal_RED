part of 'workout_hive_bloc.dart';

@freezed
class WorkoutHiveEvent with _$WorkoutHiveEvent {
  const factory WorkoutHiveEvent.addWorkout({
    required List<ExerciseModel> listMeasures,
    required String firstDate,
    required String lastDate,
    required String name,
    required List<String> listExer,
    required String id,
  }) = WorkoutHiveAddWorkoutEvent;

  const factory WorkoutHiveEvent.getAllWorkout() = WorkoutHiveGetAllWorkoutEvent;

  const factory WorkoutHiveEvent.deleteAllWorkout() = WorkoutHiveDeleteAllWorkoutEvent;
}
