import 'package:flutter/material.dart';

class MeasureValuesInheritedWidget extends InheritedWidget {
  String nameExer = "";
  int dad1 = 0;
  int dad2 = 0;
  int pulse1 = 0;
  int pulse2 = 0;
  int kerdo1 = 0;
  int kerdo2 = 0;
  int approaches = 0;
  int times = 0;
  int idExer = 0;
  final void Function(String newName) changeNameExer;
  final void Function(int newDad1) changeDad1;
  final void Function(int newDad2) changeDad2;
  final void Function(int newPulse1) changePulse1;
  final void Function(int newPulse2) changePulse2;
  final void Function(int newKerdo1) changeKerdo1;
  final void Function(int newKerdo2) changeKerdo2;
  final void Function(int newAppr) changeApproaches;
  final void Function(int newTimes) changeTimes;
  final void Function(int idExer) changeIdExer;
  final void Function() saveExercise;

  MeasureValuesInheritedWidget({
    super.key,
    required super.child,
    required this.nameExer,
    required this.dad1,
    required this.dad2,
    required this.pulse1,
    required this.pulse2,
    required this.kerdo1,
    required this.kerdo2,
    required this.approaches,
    required this.times,
    required this.changeNameExer,
    required this.changeDad1,
    required this.changeDad2,
    required this.changePulse1,
    required this.changePulse2,
    required this.changeKerdo1,
    required this.changeKerdo2,
    required this.changeApproaches,
    required this.changeTimes,
    required this.saveExercise,
    required this.changeIdExer,
  });

  static MeasureValuesInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MeasureValuesInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MeasureValuesInheritedWidget oldWidget) =>
      nameExer != oldWidget.nameExer ||
      dad1 != oldWidget.dad1 ||
      dad2 != oldWidget.dad2 ||
      pulse1 != oldWidget.pulse1 ||
      pulse2 != oldWidget.pulse2 ||
      kerdo1 != oldWidget.kerdo1 ||
      kerdo2 != oldWidget.kerdo2 ||
      approaches != oldWidget.approaches ||
      times != oldWidget.times ||
      idExer != oldWidget.idExer;
}
