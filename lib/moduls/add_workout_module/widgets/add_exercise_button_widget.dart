import 'package:flutter/material.dart';
import 'package:trainal_app/moduls/add_workout_module/add_exercise_bottom_sheet/add_exercise_bottom_widget.dart';
import 'package:trainal_app/theme/theme.dart';

import 'workout_values_inherited_widget.dart';

class AddExerciseButtonWidget extends StatelessWidget {
  const AddExerciseButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        var addExerciseFunc = WorkoutValuesInheritedWidget.of(context)?.addExercise;
        showModalBottomSheet(
          context: context,
          enableDrag: false,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return PopScope(
              canPop: false,
              child: AddExerciseBottomWidget(addExercise: addExerciseFunc),
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: Paddings.padding20,
          left: Paddings.padding20,
          top: Paddings.padding16,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.accentColor,
            borderRadius: BorderRadius.circular(Rounding.rounding20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Paddings.padding16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add,
                  size: Sizes.size35,
                ),
                const SizedBox(width: Sizes.size10),
                Text(
                  "Add Exercise",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
