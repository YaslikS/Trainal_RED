import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trainal_app/repo/db_hive_repo/export_user_hive_repo.dart';
import 'package:trainal_app/repo/firestore_firebase_repo/firestore_firebase_repo.dart';
import 'package:trainal_app/repo/repo_exceptions.dart';

part 'sync_workout_bloc.freezed.dart';

part 'sync_workout_event.dart';

part 'sync_workout_state.dart';

class SyncWorkoutBloc extends Bloc<SyncWorkoutEvent, SyncWorkoutState> {
  SyncWorkoutBloc(
    this.firestoreFirebaseRepo,
    this.workoutHiveRepo,
    this.userHiveRepo,
  ) : super(const SyncWorkoutState.initial()) {
    on<syncWorkoutSyncWorkoutEvent>((event, emit) async {
      try {
        emit(const SyncWorkoutState.loading());
        print("syncWorkoutSyncWorkoutEvent");

        final idUser = userHiveRepo.getUser()?.idUser;
        String cloudLastUpdate = "";
        final localLastUpdate = userHiveRepo.getUser()?.lastUpdate;
        if (idUser == null || localLastUpdate == null) {
          throw UnexpectedResultComparingDatesException(
            "Unexpected result of comparing dates",
          );
        }

        var resCompare = 0;
        if (localLastUpdate.isEmpty) {
          resCompare = 1;
          cloudLastUpdate = await firestoreFirebaseRepo.getLastUpdate(idUser);
          if (cloudLastUpdate.isEmpty) {
            throw UnexpectedResultComparingDatesException(
              "Unexpected result of comparing dates",
            );
          }
        } else {
          final resChecking = await firestoreFirebaseRepo.whoMoreRelevant(
            idUser,
            localLastUpdate,
          );
          resCompare = resChecking.$1;
          cloudLastUpdate = resChecking.$2;
        }
        if (cloudLastUpdate.isEmpty) resCompare = -1;

        switch (resCompare) {
          case 1: //  Cloud Date is Relevant
            print("Cloud Date is Relevant");
            final listFromCloud = await firestoreFirebaseRepo.getWorkouts(
              idUser,
            );
            //  TODO: сделать нормальную синхронизацию
            workoutHiveRepo.updateAllWorkouts(workouts: listFromCloud);
            userHiveRepo.saveLastUpdate(lastUpdate: cloudLastUpdate);
            final currentWorkoutList = workoutHiveRepo.getAllWorkout();
            emit(SyncWorkoutState.loaded(workouts: currentWorkoutList));
          case -1: //  Local Date is Relevant
            print("Local Date is Relevant");
            final listFromLocal = workoutHiveRepo.getAllWorkout();
            //  TODO: сделать нормальную синхронизацию
            firestoreFirebaseRepo.uploadWorkouts(
              workouts: listFromLocal,
              idUser: idUser,
            );
            firestoreFirebaseRepo.setLastUpdate(localLastUpdate, idUser);
            final currentWorkoutList = workoutHiveRepo.getAllWorkout();
            emit(SyncWorkoutState.loaded(workouts: currentWorkoutList));
          case 0: //  dates are equals
            print('res is 0(int) - dates are equals');
            final listFromLocal = workoutHiveRepo.getAllWorkout();
            emit(SyncWorkoutState.loaded(workouts: listFromLocal));
          default:
            throw UnexpectedResultComparingDatesException(
              "Unexpected result of comparing dates",
            );
        }
      } catch (e) {
        emit(SyncWorkoutState.loadingFailure(exception: e.toString()));
      }
    });
  }

  final UserHiveRepo userHiveRepo;
  final FirestoreFirebaseRepo firestoreFirebaseRepo;
  final WorkoutHiveRepo workoutHiveRepo;
}
