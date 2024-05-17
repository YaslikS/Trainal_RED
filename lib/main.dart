import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:trainal_app/repo/db_hive_repo/export_user_hive_repo.dart';

import 'firebase_options.dart';
import 'theme/theme.dart';
import 'trainal_red_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ExerciseModelAdapter());
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(WorkoutAdapter());
  await Hive.openBox(BDconstants.userBoxHive);
  await Hive.openBox(BDconstants.workoutBoxHive);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const TrainalRedApp());
}
