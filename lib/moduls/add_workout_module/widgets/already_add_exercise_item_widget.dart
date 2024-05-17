import 'package:flutter/material.dart';
import 'package:trainal_app/theme/theme.dart';

import '../../../repo/db_hive_repo/export_user_hive_repo.dart';
import 'workout_values_inherited_widget.dart';

class AlreadyAddedExerciseItemWidget extends StatelessWidget {
  const AlreadyAddedExerciseItemWidget({
    super.key,
    required this.exercise,
    // required this.deleteExercise,
  });

  final ExerciseModel exercise;
  // final void Function(ExerciseModel exercise) deleteExercise;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        right: Paddings.padding20,
        left: Paddings.padding20,
        top: Paddings.padding16,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(Rounding.rounding20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Paddings.padding16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    exercise.nameExer,
                    style: theme.textTheme.labelLarge,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      _confirmDeleteExerciseAlertDialog(context);
                    },
                    icon: const Icon(Icons.delete),
                  )
                ],
              ),
              const SizedBox(height: Spaces.space8),
              Text(
                "${exercise.approaches} подхода по ${exercise.times} раз",
                style: theme.textTheme.labelMedium,
              ),
              const SizedBox(height: Spaces.space10),
              Text(
                "Перед упражнением",
                style: theme.textTheme.labelMedium,
              ),
              Row(
                children: [
                  Text(
                    "Давл-е: ${exercise.dad1}",
                    style: theme.textTheme.labelMedium,
                  ),
                  const SizedBox(width: Spaces.space8),
                  Text(
                    "Пульс: ${exercise.pulse1}",
                    style: theme.textTheme.labelMedium,
                  ),
                  const SizedBox(width: Spaces.space8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Rounding.rounding5),
                      color: getColorForKerdo(context, exercise.kerdo1),
                    ),
                    child: Text(
                      "Кедро: ${exercise.kerdo1}",
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Spaces.space10),
              Text(
                "После упражнения",
                style: theme.textTheme.labelMedium,
              ),
              Row(
                children: [
                  Text(
                    "Давл-е: ${exercise.dad2}",
                    style: theme.textTheme.labelMedium,
                  ),
                  const SizedBox(width: Spaces.space8),
                  Text(
                    "Пульс: ${exercise.pulse2}",
                    style: theme.textTheme.labelMedium,
                  ),
                  const SizedBox(width: Spaces.space8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Rounding.rounding5),
                      color: getColorForKerdo(context, exercise.kerdo2),
                    ),
                    child: Text(
                      "Кедро: ${exercise.kerdo2}",
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _confirmDeleteExerciseAlertDialog(BuildContext parentContext){
    showDialog(
      context: parentContext,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Delete an exercise?"),
          content: const Text(
            "Click \"Cancel\" if you are not sure",
          ),
          actions: [
            TextButton(
              child: const Text("Delete"),
              onPressed: () {
                WorkoutValuesInheritedWidget.of(parentContext)?.deleteExercise(exercise);
                // deleteExercise(exercise);
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Color getColorForKerdo(BuildContext context, int kerdo) {
    if (kerdo < -15) {
      return AppColors.greenAccent;
    } else if (15 < kerdo) {
      return AppColors.redAccent;
    } else {
      return AppColors.yellowAccent;
    }
  }
}
