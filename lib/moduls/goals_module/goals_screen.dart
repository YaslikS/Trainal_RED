import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trainal_app/theme/theme.dart';

@RoutePage()
class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        title: Text("Your Goals"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your Goals',
              style: theme.textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
