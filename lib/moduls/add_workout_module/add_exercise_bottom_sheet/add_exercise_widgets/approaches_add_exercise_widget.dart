import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trainal_app/moduls/add_workout_module/add_exercise_bottom_sheet/measure_values_inherited_widget.dart';

import '../../../../theme/theme.dart';

class ApproachesAddExrciseWidget extends StatelessWidget {
  const ApproachesAddExrciseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: Paddings.padding20,
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
                "Сделано",
                style: theme.textTheme.labelLarge,
              ),
              const SizedBox(height: Spaces.space8),
              Row(
                children: [
                  SizedBox(
                    height: Sizes.size50,
                    width: Sizes.size72,
                    child: TextFormField(
                      onChanged: (value) {
                        print("TextField - before - Approaches");
                        if (value == "") return;
                        var safeValue = int.parse(value);
                        if (safeValue == 0) return;
                        MeasureValuesInheritedWidget.of(context)?.changeApproaches(safeValue);
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(Rounding.rounding15),
                          borderSide:
                              const BorderSide(color: AppColors.accentColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(Rounding.rounding15),
                          borderSide:
                              const BorderSide(color: AppColors.accentColor),
                        ),
                        fillColor: theme.colorScheme.secondaryContainer,
                        filled: true,
                        counterText: "",
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style: theme.textTheme.labelMedium,
                      maxLength: 1,
                      maxLines: 1,
                    ),
                  ),
                  const SizedBox(width: Spaces.space4),
                  Text(
                    "подхода по",
                    style: theme.textTheme.labelLarge,
                  ),
                  const SizedBox(width: Spaces.space4),
                  SizedBox(
                    height: Sizes.size50,
                    width: Sizes.size72,
                    child: TextField(
                      onChanged: (value) {
                        print("TextField - before - Times");
                        if (value == "") return;
                        var safeValue = int.parse(value);
                        if (safeValue == 0) return;
                        MeasureValuesInheritedWidget.of(context)?.changeTimes(safeValue);
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(Rounding.rounding15),
                          borderSide:
                              const BorderSide(color: AppColors.accentColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(Rounding.rounding15),
                          borderSide:
                              const BorderSide(color: AppColors.accentColor),
                        ),
                        fillColor: theme.colorScheme.secondaryContainer,
                        filled: true,
                        counterText: "",
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style: theme.textTheme.labelMedium,
                      maxLines: 1,
                      maxLength: 2,
                    ),
                  ),
                  const SizedBox(width: Spaces.space4),
                  Text(
                    "раз",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
