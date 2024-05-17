import 'package:hive/hive.dart';
import 'package:trainal_app/repo/db_hive_repo/export_user_hive_repo.dart';

import '../../theme/theme.dart';

class WorkoutHiveRepo {
  final _workoutBoxHive = Hive.box(BDconstants.workoutBoxHive);

  Future<Workout> createWorkout({
    required List<ExerciseModel> listExercises,
    required String firstDate,
    required String lastDate,
    required String name,
    required List<String> listExer,
    required String id,
  }) async {
    var workout = Workout(
      idWorkout: id,
      listExercise: listExercises,
      firstDate: firstDate,
      lastDate: lastDate,
      listExer: listExer,
      name: name,
    );
    _workoutBoxHive.add(workout);
    return workout;
  }

  void updateAllWorkouts({
    required List<Workout> workouts,
  }) {
    workouts.forEach((element) {
      createWorkout(
        listExercises: element.listExercise,
        firstDate: element.firstDate,
        lastDate: element.lastDate,
        name: element.name,
        listExer: element.listExer,
        id: element.idWorkout,
      );
    });
    showAllWorkouts();
  }

  List<Workout> getAllWorkout() {
    List<Workout> listWorkout = [];
    try {
      for (int i = 0; i < _workoutBoxHive.length; ++i) {
        final workout = _workoutBoxHive.getAt(i) as Workout;
        listWorkout.add(workout);
      }
    } catch (e) {
      print("getWorkout - ERROR - $e");
    }
    showAllWorkouts();
    return listWorkout;
  }

  Future<void> deleteAll() async {
    await _workoutBoxHive.clear();
  }

  showAllWorkouts() {
    print("showAllWorkouts - entrance");
    try {
      for (int i = 0; i < _workoutBoxHive.length; ++i) {
        final workout = _workoutBoxHive.getAt(i) as Workout;
        print("${workout.idWorkout} ${workout.listExercise[0].idExer} "
            "${workout.firstDate} ${workout.lastDate}");
      }
    } catch (e) {
      print("getWorkout - ERROR - $e");
    }
    print("showAllWorkouts - exit");
  }
}
