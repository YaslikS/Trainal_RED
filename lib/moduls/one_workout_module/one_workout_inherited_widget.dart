import 'package:flutter/material.dart';
import 'package:trainal_app/repo/db_hive_repo/export_user_hive_repo.dart';

class OneWorkoutInheritedWidget extends InheritedWidget {
  final Workout workout;

  const OneWorkoutInheritedWidget({
    super.key,
    required super.child,
    required this.workout,
  });

  static OneWorkoutInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<OneWorkoutInheritedWidget>();
  }

  @override
  bool updateShouldNotify(OneWorkoutInheritedWidget oldWidget) =>
      workout != oldWidget.workout;
}
