import 'package:hive/hive.dart';
import 'package:trainal_app/repo/db_hive_repo/workout_hive_bloc/exercise_hive_model/export_exercise_hive_model.dart';

part 'workout_hive_model.g.dart';

@HiveType(typeId: 1)
class Workout extends HiveObject {
  @HiveField(0)
  String idWorkout;
  @HiveField(1)
  List<ExerciseModel> listExercise;
  @HiveField(2)
  String firstDate;
  @HiveField(3)
  String lastDate;
  @HiveField(4)
  List<String> listExer;
  @HiveField(5)
  String name;

  Workout({
    required this.idWorkout,
    required this.listExercise,
    required this.firstDate,
    required this.lastDate,
    required this.listExer,
    required this.name,
  });
}
