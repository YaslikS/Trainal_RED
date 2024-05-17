import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trainal_app/moduls/add_workout_module/add_exercise_bottom_sheet/measure_values_inherited_widget.dart';
import 'package:trainal_app/theme/theme.dart';

class BeforeExerciseAddWidget extends StatelessWidget {
  const BeforeExerciseAddWidget({
    super.key,
  });

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
                "Перед упражением",
                style: theme.textTheme.labelLarge,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Давление",
                        style: theme.textTheme.labelLarge,
                      ),
                      const Icon(
                        Icons.arrow_downward_rounded,
                        size: Sizes.size35,
                      ),
                      SizedBox(
                        height: Sizes.size50,
                        width: Sizes.size100,
                        child: TextField(
                          onChanged: (value) {
                            print("TextField - before - dad1");
                            if (value == "") return;
                            var safeValue = int.parse(value);
                            if (safeValue < 30 || 130 < safeValue) return;
                            MeasureValuesInheritedWidget.of(context)?.changeDad1(safeValue);
                            getPulse(context, safeValue);
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
                            fillColor: theme.colorScheme.secondaryContainer,
                            filled: true,
                            counterText: "",
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: theme.textTheme.labelMedium,
                          maxLength: 3,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: Spaces.space10),
                  Column(
                    children: [
                      Text(
                        "Пульс",
                        style: theme.textTheme.labelLarge,
                      ),
                      const Icon(
                        Icons.arrow_downward_rounded,
                        size: Sizes.size35,
                      ),
                      SizedBox(
                        height: Sizes.size50,
                        width: Sizes.size100,
                        child: TextField(
                          onChanged: (value) {
                            print("TextField - before - pulse1");
                            if (value == "") return;
                            var safeValue = int.parse(value);
                            if (safeValue < 40 || 230 < safeValue) return;
                            MeasureValuesInheritedWidget.of(context)
                                ?.changePulse1(safeValue);
                            getDad(context, safeValue);
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
                            fillColor: theme.colorScheme.secondaryContainer,
                            counterText: "",
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: theme.textTheme.labelMedium,
                          maxLength: 3,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: Spaces.space10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Rounding.rounding15),
                      color: getColorForKerdo(context),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(Paddings.padding10),
                      child: Column(
                        children: [
                          Text(
                            "Кедро",
                            style: theme.textTheme.labelLarge,
                          ),
                          const Icon(
                            Icons.arrow_downward_rounded,
                            size: Sizes.size35,
                          ),
                          Text(
                            MeasureValuesInheritedWidget.of(context)?.kerdo1.toString() ?? "",
                            style: theme.textTheme.displaySmall,
                          ),
                        ],
                      ),
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

  Color getColorForKerdo(BuildContext context) {
    int? kerdo = MeasureValuesInheritedWidget.of(context)?.kerdo1;
    if (kerdo == null) return AppColors.black;
    if (kerdo < -15) {
      return AppColors.greenAccent;
    } else if (15 < kerdo) {
      return AppColors.redAccent;
    } else {
      return AppColors.yellowAccent;
    }
  }

  calcKerdo(BuildContext context, int? dad, int? pulse) {
    if (dad == null || pulse == null) return 0;
    print("calcKerdo $dad / $pulse");
    if (dad == 0 || pulse == 0) return 0;
    int kerdo = (100 * (1 - dad / pulse)).round();
    MeasureValuesInheritedWidget.of(context)?.changeKerdo1(kerdo);
  }

  getPulse(BuildContext context, int dad){
    int? pulse = MeasureValuesInheritedWidget.of(context)?.pulse1;
    calcKerdo(context, dad, pulse);
  }

  getDad(BuildContext context, int pulse){
    int? dad = MeasureValuesInheritedWidget.of(context)?.dad1;
    calcKerdo(context, dad, pulse);
  }
}
