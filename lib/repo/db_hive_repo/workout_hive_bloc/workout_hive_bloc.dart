import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../export_user_hive_repo.dart';

part 'workout_hive_bloc.freezed.dart';

part 'workout_hive_event.dart';

part 'workout_hive_state.dart';

class WorkoutHiveBloc extends Bloc<WorkoutHiveEvent, WorkoutHiveState> {
  WorkoutHiveBloc(this.workoutHiveRepo) : super(const WorkoutHiveState.initial()) {
    on<WorkoutHiveAddWorkoutEvent>((event, emit) async {
      try {
        emit(const WorkoutHiveState.loading());
        Workout workout = await workoutHiveRepo.createWorkout(
          listExercises: event.listMeasures,
          listExer: event.listExer,
          firstDate: event.firstDate,
          lastDate: event.lastDate,
          name: event.name,
          id: event.id,
        );
        emit(WorkoutHiveState.workoutCreated(workout: workout));
      } catch (e) {
        emit(WorkoutHiveState.loadingFailure(exception: e.toString()));
      }
    });
    on<WorkoutHiveGetAllWorkoutEvent>((event, emit) async {
      try {
        emit(const WorkoutHiveState.loading());
        List<Workout> listWorkout = workoutHiveRepo.getAllWorkout();
        emit(WorkoutHiveState.allWorkoutGetted(listWorkout: listWorkout));
      } catch (e) {
        emit(WorkoutHiveState.loadingFailure(exception: e.toString()));
      }
    });
    on<WorkoutHiveDeleteAllWorkoutEvent>((event, emit) async {
      try {
        emit(const WorkoutHiveState.loading());
        await workoutHiveRepo.deleteAll();
        emit(const WorkoutHiveState.deleted());
      } catch (e) {
        emit(WorkoutHiveState.loadingFailure(exception: e.toString()));
      }
    });
  }

  final WorkoutHiveRepo workoutHiveRepo;
}
