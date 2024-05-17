import 'package:flutter/material.dart';

import '../../repo/db_hive_repo/export_user_hive_repo.dart';

class GlobalUserInheritedWidget extends InheritedWidget {
  final User? user;

  const GlobalUserInheritedWidget({
    super.key,
    required super.child,
    required this.user,
  });

  static GlobalUserInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GlobalUserInheritedWidget>();
  }

  @override
  bool updateShouldNotify(GlobalUserInheritedWidget oldWidget) =>
      user != oldWidget.user;
}
