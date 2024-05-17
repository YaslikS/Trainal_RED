import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainal_app/moduls/add_workout_module/add_exercise_bottom_sheet/measure_values_inherited_widget.dart';
import 'package:trainal_app/repo/exercise_integrated_repo/exercise_integrated_bloc/exercise_integrated_bloc.dart';
import 'package:trainal_app/repo/exercise_integrated_repo/exercise_integrated_model/exercise_integrated_model.dart';

import '../../../../theme/theme.dart';

class SelectNameExerciseAddWidget extends StatefulWidget {
  const SelectNameExerciseAddWidget({
    super.key,
  });

  @override
  State<SelectNameExerciseAddWidget> createState() => _SelectNameExerciseAddWidgetState();
}

class _SelectNameExerciseAddWidgetState extends State<SelectNameExerciseAddWidget> {
  ExerciseIntegrated? dropdownValue;
  List<ExerciseIntegrated>? listExerciseInter;

  @override
  void initState() {
    super.initState();
    context
        .read<ExerciseIntegratedBloc>()
        .add(const ExerciseIntegratedEvent.getExercises());
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ExerciseIntegratedBloc>().state;
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
                "Выберите упражение",
                style: theme.textTheme.labelLarge,
              ),
              const SizedBox(height: Spaces.space8),
              SizedBox(
                height: Sizes.size72,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.accentColor),
                    borderRadius: BorderRadius.circular(Rounding.rounding15),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<ExerciseIntegrated>(
                      value: dropdownValue,
                      isExpanded: true,
                      padding: const EdgeInsets.only(left: Paddings.padding16),
                      hint: Text("Упражнение", style: theme.textTheme.labelMedium),
                      iconSize: Sizes.size35,
                      style: theme.textTheme.labelMedium,
                      icon: const Icon(Icons.arrow_drop_down, color: AppColors.white),
                      items: state.maybeWhen(
                        loaded: (list) => list.map((n) => buildMenuItem(n)).toList(),
                        orElse: () => [buildMenuItem(ExerciseIntegrated(id: 0, name: ""))],
                      ),
                      onChanged: (ExerciseIntegrated? value) {
                        print("SelectNameExerciseAddWidget - onChanged - ${value?.id} - ${value?.name}");
                        if (value == null) return;
                        setState(() => dropdownValue = value);
                        MeasureValuesInheritedWidget.of(context)?.changeNameExer(value.name);
                        MeasureValuesInheritedWidget.of(context)?.changeIdExer(value.id);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<ExerciseIntegrated> buildMenuItem(ExerciseIntegrated item) => DropdownMenuItem(
        value: item,
        child: Text(item.name),
      );
}
