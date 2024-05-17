// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutAdapter extends TypeAdapter<Workout> {
  @override
  final int typeId = 1;

  @override
  Workout read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Workout(
      idWorkout: fields[0] as String,
      listExercise: (fields[1] as List).cast<ExerciseModel>(),
      firstDate: fields[2] as String,
      lastDate: fields[3] as String,
      listExer: (fields[4] as List).cast<String>(),
      name: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Workout obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.idWorkout)
      ..writeByte(1)
      ..write(obj.listExercise)
      ..writeByte(2)
      ..write(obj.firstDate)
      ..writeByte(3)
      ..write(obj.lastDate)
      ..writeByte(4)
      ..write(obj.listExer)
      ..writeByte(5)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkoutAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
