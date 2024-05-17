import 'package:flutter/material.dart';
import 'package:trainal_app/moduls/add_workout_module/add_exercise_bottom_sheet/measure_values_inherited_widget.dart';

import '../../../../theme/theme.dart';

class TopButtonsAddExerciseWidget extends StatelessWidget {
  const TopButtonsAddExerciseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Paddings.padding20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(AppColors.darkGrey),
            ),
            child: const Padding(
              padding: EdgeInsets.all(Paddings.padding10),
              child: Text("Закрыть"),
            ),
          ),
          const SizedBox(width: Spaces.space16),
          IgnorePointer(
            ignoring: !validateMeasureValues(context),
            child: FilledButton(
              onPressed: () {
                print("AddFilledButton");
                MeasureValuesInheritedWidget.of(context)?.saveExercise();
                Navigator.of(context).pop();
              },
              style: FilledButton.styleFrom(
                backgroundColor: validateMeasureValues(context)
                    ? AppColors.accentColor
                    : AppColors.darkGrey,
              ),
              child: const Padding(
                padding: EdgeInsets.all(Paddings.padding10),
                child: Text("Добавить"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool validateMeasureValues(BuildContext context) {
    String name = MeasureValuesInheritedWidget.of(context)!.nameExer;
    int dad1 = MeasureValuesInheritedWidget.of(context)!.dad1;
    int dad2 = MeasureValuesInheritedWidget.of(context)!.dad2;
    int pulse1 = MeasureValuesInheritedWidget.of(context)!.pulse1;
    int pulse2 = MeasureValuesInheritedWidget.of(context)!.pulse2;
    int kerdo1 = MeasureValuesInheritedWidget.of(context)!.kerdo1;
    int kerdo2 = MeasureValuesInheritedWidget.of(context)!.kerdo2;
    int approaches = MeasureValuesInheritedWidget.of(context)!.approaches;
    int times = MeasureValuesInheritedWidget.of(context)!.times;
    print("$name / $dad1 / $dad2 / $pulse1 / $pulse2 / $kerdo1 / $kerdo2 "
        "/ $approaches / $times");

    if (name == null ||
        dad1 == null ||
        dad2 == null ||
        pulse1 == null ||
        pulse2 == null ||
        kerdo1 == null ||
        kerdo2 == null ||
        approaches == null ||
        times == null) {
      return false;
    }

    if (name == "" ||
        dad1 == 0 ||
        dad2 == 0 ||
        pulse1 == 0 ||
        pulse2 == 0 ||
        approaches == 0 ||
        times == 0) {
      return false;
    }

    return true;
  }
}
