import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:trainal_app/moduls/add_workout_module/widgets/export_add_workout_widgets.dart';
import 'package:trainal_app/repo/firestore_firebase_repo/firestore_firebase_repo.dart';
import 'package:trainal_app/theme/theme.dart';
import 'package:uuid/uuid.dart';

import '../../repo/db_hive_repo/export_user_hive_repo.dart';

@RoutePage()
class AddWorkoutScreen extends StatefulWidget {
  const AddWorkoutScreen({super.key});

  @override
  State<AddWorkoutScreen> createState() => _AddWorkoutScreenState();
}

class _AddWorkoutScreenState extends State<AddWorkoutScreen> {
  List<ExerciseModel> listExercise = [];
  List<String> listNameExer = [];
  String nameWorkoutDate = "";
  String firstWorkoutDate = "";
  String endWorkoutDate = "";
  String _idUser = "";

  @override
  void initState() {
    super.initState();
    nameWorkoutDate = getStringWithDateTimeNow(BDconstants.dateNameWorkoutFormat);
    firstWorkoutDate =
        getStringWithDateTimeNow(BDconstants.dateFirstLastDateWorkoutFormat);
    print(nameWorkoutDate);
    print(firstWorkoutDate);
    context.read<UserHiveBloc>().add(const UserHiveEvent.getUser());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        title: Text("Add Workout"),
        actions: [
          listExercise.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.save),
                  onPressed: () {
                    _confirmSaveWorkoutAlertDialog();
                  },
                )
              : Container(),
        ],
      ),
      body: BlocConsumer<UserHiveBloc, UserHiveState>(
        listener: (context, state) {
          state.maybeWhen(
            userGetted: (user) => {
              _idUser = user.idUser,
            },
            loadingFailure: (e) => {
              print("loadingFailure $e"),
            },
            orElse: () => (print("BDHive - BlocConsumer - orElse")),
          );
        },
        builder: (context, state) {
          return BlocConsumer<WorkoutHiveBloc, WorkoutHiveState>(
            listener: (context, state) {
              state.maybeWhen(
                workoutCreated: (workout) => {
                  print("FirestoreFirebaseRepo().addWorkout(workout)"),
                  FirestoreFirebaseRepo().addWorkout(workout, _idUser),
                  Navigator.of(context).pop(),
                },
                orElse: () => (),
              );
            },
            builder: (context, state) {
              return SingleChildScrollView(
                child: WorkoutValuesInheritedWidget(
                  addExercise: addExercise,
                  deleteExercise: deleteExercise,
                  child: Column(
                    children: [
                      DateTrainingSessionWidget(formattedDate: nameWorkoutDate),
                      const AddExerciseButtonWidget(),
                      ListView.builder(
                        shrinkWrap: true,
                        reverse: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, i) {
                          return AlreadyAddedExerciseItemWidget(
                            exercise: ExerciseModel(
                              nameExer: listExercise[i].nameExer,
                              dad1: listExercise[i].dad1,
                              dad2: listExercise[i].dad2,
                              pulse1: listExercise[i].pulse1,
                              pulse2: listExercise[i].pulse2,
                              kerdo1: listExercise[i].kerdo1,
                              kerdo2: listExercise[i].kerdo2,
                              approaches: listExercise[i].approaches,
                              times: listExercise[i].times,
                              idExer: listExercise[i].idExer,
                            ),
                            // deleteExercise: deleteExercise,
                          );
                        },
                        itemCount: listExercise.length,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _confirmSaveWorkoutAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Save a workout?"),
          content: const Text(
            "Click \"save\" if you have finished your workout",
          ),
          actions: [
            TextButton(
              child: const Text("Save"),
              onPressed: () {
                _addWorkout();
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _addWorkout() {
    endWorkoutDate = getStringWithDateTimeNow(BDconstants.dateFirstLastDateWorkoutFormat);
    print(endWorkoutDate);
    context.read<WorkoutHiveBloc>().add(WorkoutHiveEvent.addWorkout(
          firstDate: firstWorkoutDate,
          listMeasures: listExercise,
          lastDate: endWorkoutDate,
          listExer: listNameExer,
          name: nameWorkoutDate,
          id: const Uuid().v1(),
        ));
    context.read<UserHiveBloc>().add(UserHiveEvent.saveLastUpdate(
          lastUpdate: endWorkoutDate,
        ));
  }

  void deleteExercise(ExerciseModel exercise) {
    setState(() {
      listExercise.remove(exercise);
      listNameExer.remove(exercise.nameExer);
    });
    print("deleteExercise");
    print(listNameExer);
  }

  void addExercise(ExerciseModel exercise) {
    setState(() {
      listExercise.add(exercise);
      listNameExer.add(exercise.nameExer);
    });
    print(listNameExer);
    // listExercise.forEach((element) {
    //   print(element.nameExer);
    // });
  }

  String getStringWithDateTimeNow(String format) {
    return DateFormat(format).format(DateTime.now());
  }
}
