import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trainal_app/moduls/add_workout_module/add_exercise_bottom_sheet/add_exercise_widgets/export_add_exercise_widgets.dart';
import 'package:trainal_app/moduls/add_workout_module/add_exercise_bottom_sheet/add_exercise_widgets/select_name_exercise_add_widget.dart';

import '../../../repo/db_hive_repo/export_user_hive_repo.dart';
import 'measure_values_inherited_widget.dart';

class AddExerciseBottomWidget extends StatefulWidget {
  const AddExerciseBottomWidget({
    super.key,
    required this.addExercise,
  });

  final void Function(ExerciseModel exercise)? addExercise;

  @override
  State<AddExerciseBottomWidget> createState() => _AddExerciseBottomWidgetState();
}

class _AddExerciseBottomWidgetState extends State<AddExerciseBottomWidget> {
  String _nameExer = "";
  int _dad1 = 0;
  int _dad2 = 0;
  int _pulse1 = 0;
  int _pulse2 = 0;
  int _kerdo1 = 0;
  int _kerdo2 = 0;
  int _approaches = 0;
  int _times = 0;
  int _idExer = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      width: double.infinity,
      child: MeasureValuesInheritedWidget(
        nameExer: _nameExer,
        dad1: _dad1,
        dad2: _dad2,
        pulse1: _pulse1,
        pulse2: _pulse2,
        kerdo1: _kerdo1,
        kerdo2: _kerdo2,
        approaches: _approaches,
        times: _times,
        changeNameExer: changeNameExer,
        changeDad1: changeDad1,
        changeDad2: changeDad2,
        changePulse1: changePulse1,
        changePulse2: changePulse2,
        changeKerdo1: changeKerdo1,
        changeKerdo2: changeKerdo2,
        changeApproaches: changeApproaches,
        changeTimes: changeTimes,
        saveExercise: saveExercise,
        changeIdExer: changeIdExer,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopButtonsAddExerciseWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SelectNameExerciseAddWidget(),
                    BeforeExerciseAddWidget(),
                    ApproachesAddExrciseWidget(),
                    AfterExerciseAddWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  saveExercise() {
    print("$_nameExer / $_dad1 / $_dad2 / $_pulse1 / $_pulse2"
        " / $_kerdo1 / $_kerdo2 / $_approaches / $_times");
    ExerciseModel exerciseModel = ExerciseModel(
      nameExer: _nameExer,
      dad1: _dad1,
      dad2: _dad2,
      pulse1: _pulse1,
      pulse2: _pulse2,
      kerdo1: _kerdo1,
      kerdo2: _kerdo2,
      approaches: _approaches,
      times: _times,
      idExer: _idExer,
    );
    if (widget.addExercise == null) return;
    widget.addExercise!(exerciseModel);
    // WorkoutValuesInheritedWidget.of(context)!.addExercise(exerciseModel);
    print("saveExercise");
  }

  changeNameExer(String newName) {
    setState(() => _nameExer = newName);
  }

  changeIdExer(int idExer) {
    setState(() => _idExer = idExer);
  }

  changeDad1(int newDad1) {
    setState(() => _dad1 = newDad1);
  }

  changeDad2(int newDad2) {
    setState(() => _dad2 = newDad2);
  }

  changePulse1(int newPulse1) {
    setState(() => _pulse1 = newPulse1);
  }

  changePulse2(int newPulse2) {
    setState(() => _pulse2 = newPulse2);
  }

  changeKerdo1(int newKerdo1) {
    setState(() => _kerdo1 = newKerdo1);
  }

  changeKerdo2(int newKerdo2) {
    setState(() => _kerdo2 = newKerdo2);
  }

  changeApproaches(int newAppr) {
    setState(() => _approaches = newAppr);
  }

  changeTimes(int newTimes) {
    setState(() => _times = newTimes);
  }
}
