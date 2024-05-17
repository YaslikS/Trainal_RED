import 'package:flutter/material.dart';
import 'package:trainal_app/theme/theme.dart';

class DateTrainingSessionWidget extends StatelessWidget {
  DateTrainingSessionWidget({
    super.key,
    required this.formattedDate,
  });

  String formattedDate;

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
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Training session from',
                style: theme.textTheme.labelLarge,
              ),
              Text(
                formattedDate,
                style: theme.textTheme.displaySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
