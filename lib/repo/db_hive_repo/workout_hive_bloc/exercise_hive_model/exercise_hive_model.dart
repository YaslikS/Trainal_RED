import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'exercise_hive_model.g.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 2)
class ExerciseModel {
  @HiveField(0)
  String nameExer;
  @HiveField(1)
  int dad1;
  @HiveField(2)
  int dad2;
  @HiveField(3)
  int pulse1;
  @HiveField(4)
  int pulse2;
  @HiveField(5)
  int kerdo1;
  @HiveField(6)
  int kerdo2;
  @HiveField(7)
  int approaches;
  @HiveField(8)
  int times;
  @HiveField(9)
  int idExer;

  ExerciseModel({
    required this.nameExer,
    required this.dad1,
    required this.dad2,
    required this.pulse1,
    required this.pulse2,
    required this.kerdo1,
    required this.kerdo2,
    required this.approaches,
    required this.times,
    required this.idExer,
  });

  // From Json
  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  // ToJson
  Map<String, dynamic> toJson() => _$ExerciseModelToJson(this);
}
