import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainal_app/repo/auth_firebase_repo/auth_firebase_bloc/auth_bloc.dart';
import 'package:trainal_app/theme/theme.dart';

class DescriptionErrorRegisWidget extends StatelessWidget {
  DescriptionErrorRegisWidget({
    super.key,
    required this.buttonClickedWas,
  });

  bool buttonClickedWas;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;
    final theme = Theme.of(context);
    return state.maybeWhen(
      noAuth: (desc) => Column(
        children: [
          buttonClickedWas
              ? Center(
                  child: Text(
                    "noAuth $desc",
                    style: theme.textTheme.labelSmall?.copyWith(fontSize: 17),
                  ),
                )
              : const Center(),
          const SizedBox(height: Spaces.space8),
        ],
      ),
      loadingFailure: (error) => Column(
        children: [
          Center(
            child: Text(
              "loadingFailure $error",
              style: theme.textTheme.labelSmall?.copyWith(fontSize: 17),
            ),
          ),
          const SizedBox(height: Spaces.space8),
        ],
      ),
      orElse: () => Container(),
    );
  }
}
