import 'package:flutter/material.dart';
import 'package:trainal_app/repo/db_hive_repo/export_user_hive_repo.dart';

class WorkoutValuesInheritedWidget extends InheritedWidget {
  final void Function(ExerciseModel exercise) addExercise;
  final void Function(ExerciseModel exercise) deleteExercise;

  const WorkoutValuesInheritedWidget({
    super.key,
    required this.addExercise,
    required this.deleteExercise,
    required super.child,
  });

  static WorkoutValuesInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<WorkoutValuesInheritedWidget>();
  }

  @override
  bool updateShouldNotify(WorkoutValuesInheritedWidget oldWidget) => false;
}
