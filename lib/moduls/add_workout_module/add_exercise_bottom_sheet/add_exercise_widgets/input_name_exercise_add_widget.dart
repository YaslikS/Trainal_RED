import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trainal_app/moduls/add_workout_module/add_exercise_bottom_sheet/measure_values_inherited_widget.dart';

import '../../../../theme/theme.dart';

@Deprecated("Replace with a choice of exercises")
class InputNameExerciseAddWidget extends StatelessWidget {
  const InputNameExerciseAddWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        right: Paddings.padding20,
        left: Paddings.padding20,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(Rounding.rounding20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: Paddings.padding16,
            right: Paddings.padding20,
            left: Paddings.padding20,
            bottom: Paddings.padding20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Выполняемое упражение",
                style: theme.textTheme.labelLarge,
              ),
              const SizedBox(height: Spaces.space8),
              SizedBox(
                height: Sizes.size50,
                child: TextField(
                  onChanged: (value) {
                    print("InputNameExerciseAddWidget - onChanged - $value");
                    MeasureValuesInheritedWidget.of(context)?.changeNameExer(value);
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Rounding.rounding15),
                      borderSide: const BorderSide(color: AppColors.accentColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Rounding.rounding15),
                      borderSide: const BorderSide(color: AppColors.accentColor),
                    ),
                    labelText: "Введите название упражнения",
                    hintStyle:
                        theme.textTheme.titleSmall!.copyWith(color: Colors.grey),
                    fillColor: theme.colorScheme.secondaryContainer,
                    filled: true,
                  ),
                  keyboardType: TextInputType.name,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                  ],
                  style: theme.textTheme.labelMedium,
                  maxLines: 1,
                  minLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
