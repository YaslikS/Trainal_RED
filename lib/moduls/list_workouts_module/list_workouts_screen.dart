import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainal_app/moduls/list_workouts_module/workout_item_widget/export_workout_item_widget.dart';
import 'package:trainal_app/repo/db_hive_repo/export_user_hive_repo.dart';
import 'package:trainal_app/repo/sync_workout_repo/sync_workout_bloc/sync_workout_bloc.dart';
import 'package:trainal_app/router/app_auto_router.dart';
import 'package:trainal_app/theme/app_constants.dart';

@RoutePage()
class ListWorkoutsScreen extends StatefulWidget {
  const ListWorkoutsScreen({super.key});

  @override
  State<ListWorkoutsScreen> createState() => _ListWorkoutsScreenState();
}

class _ListWorkoutsScreenState extends State<ListWorkoutsScreen> {
  @override
  void initState() {
    super.initState();
    print("ListWorkoutsScreen - initState");
    context.read<SyncWorkoutBloc>().add(const SyncWorkoutEvent.syncWorkout());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    stateWorkoutHiveListener();
    stateUserHiveListener();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        title: Text("Your Workouts"),
      ),
      body: BlocConsumer<SyncWorkoutBloc, SyncWorkoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (listWorkout) => SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) {
                  return WorkoutItemWidget(
                    index: i,
                    workout: listWorkout[i],
                  );
                },
                itemCount: listWorkout.length,
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loadingFailure: (e) => Center(
              child: Text(
                "Error: $e",
                style: theme.textTheme.labelSmall,
              ),
            ),
            orElse: () => Center(
              child: Text(
                "You haven't done any training yet",
                style: theme.textTheme.labelSmall,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          AutoRouter.of(context).push(const AddWorkoutRoute()),
        },
        tooltip: 'Increment',
        backgroundColor: AppColors.accentColor,
        child: const Icon(Icons.add),
      ),
    );
  }

  void stateWorkoutHiveListener() {
    final stateWorkoutHive = context.watch<WorkoutHiveBloc>().state;
    stateWorkoutHive.maybeWhen(
      workoutCreated: (workout) => {
        print("stateWorkoutHiveListener - workoutCreated"),
        context.read<SyncWorkoutBloc>().add(
              const SyncWorkoutEvent.syncWorkout(),
            ),
      },
      orElse: () => (),
    );
  }

  void stateUserHiveListener() {
    final stateUserHive = context.watch<UserHiveBloc>().state;
    stateUserHive.maybeWhen(
      userCreated: (_) => {
        print("stateUserHiveListener - userCreated"),
        context.read<SyncWorkoutBloc>().add(
              const SyncWorkoutEvent.syncWorkout(),
            ),
      },
      deleted: () => {
        print("stateUserHiveListener - deleted"),
        context.read<SyncWorkoutBloc>().add(
              const SyncWorkoutEvent.syncWorkout(),
            ),
      },
      orElse: () => (),
    );
  }
}
