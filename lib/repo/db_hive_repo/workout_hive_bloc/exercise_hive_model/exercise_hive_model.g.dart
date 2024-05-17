// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExerciseModelAdapter extends TypeAdapter<ExerciseModel> {
  @override
  final int typeId = 2;

  @override
  ExerciseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExerciseModel(
      nameExer: fields[0] as String,
      dad1: fields[1] as int,
      dad2: fields[2] as int,
      pulse1: fields[3] as int,
      pulse2: fields[4] as int,
      kerdo1: fields[5] as int,
      kerdo2: fields[6] as int,
      approaches: fields[7] as int,
      times: fields[8] as int,
      idExer: fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ExerciseModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.nameExer)
      ..writeByte(1)
      ..write(obj.dad1)
      ..writeByte(2)
      ..write(obj.dad2)
      ..writeByte(3)
      ..write(obj.pulse1)
      ..writeByte(4)
      ..write(obj.pulse2)
      ..writeByte(5)
      ..write(obj.kerdo1)
      ..writeByte(6)
      ..write(obj.kerdo2)
      ..writeByte(7)
      ..write(obj.approaches)
      ..writeByte(8)
      ..write(obj.times)
      ..writeByte(9)
      ..write(obj.idExer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExerciseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExerciseModel _$ExerciseModelFromJson(Map<String, dynamic> json) =>
    ExerciseModel(
      nameExer: json['nameExer'] as String,
      dad1: json['dad1'] as int,
      dad2: json['dad2'] as int,
      pulse1: json['pulse1'] as int,
      pulse2: json['pulse2'] as int,
      kerdo1: json['kerdo1'] as int,
      kerdo2: json['kerdo2'] as int,
      approaches: json['approaches'] as int,
      times: json['times'] as int,
      idExer: json['idExer'] as int,
    );

Map<String, dynamic> _$ExerciseModelToJson(ExerciseModel instance) =>
    <String, dynamic>{
      'nameExer': instance.nameExer,
      'dad1': instance.dad1,
      'dad2': instance.dad2,
      'pulse1': instance.pulse1,
      'pulse2': instance.pulse2,
      'kerdo1': instance.kerdo1,
      'kerdo2': instance.kerdo2,
      'approaches': instance.approaches,
      'times': instance.times,
      'idExer': instance.idExer,
    };
