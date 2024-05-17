import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:trainal_app/repo/db_hive_repo/user_hive_bloc/user_hive_model/user_hive_model.dart';
import 'package:trainal_app/repo/db_hive_repo/workout_hive_bloc/exercise_hive_model/exercise_json.dart';
import 'package:trainal_app/repo/db_hive_repo/workout_hive_bloc/workout_hive_model/workout_hive_model.dart';
import 'package:trainal_app/theme/app_constants.dart';

import '../repo_exceptions.dart';

class FirestoreFirebaseRepo {
  static final FirestoreFirebaseRepo firestoreFirebaseRepo =
      FirestoreFirebaseRepo._internal();

  factory FirestoreFirebaseRepo() {
    return firestoreFirebaseRepo;
  }

  FirestoreFirebaseRepo._internal();

  /// User

  void addUser(User user) {
    final users = FirebaseFirestore.instance.collection("users");
    final dataUser = <String, dynamic>{
      "idUser": user.idUser,
      "type": user.type,
      "name": user.name,
      "email": user.email,
      "goalsJson": user.goalsJson,
      "trainerID": user.trainerID,
      "lastUpdate": user.lastUpdate,
    };
    users.doc(user.idUser).set(dataUser);
  }

  void deleteUser(String idUser) {
    FirebaseFirestore.instance.collection("users").doc(idUser).delete();
  }

  void editName(String newName, String idUser) {
    FirebaseFirestore.instance.collection("users").doc(idUser).update(
      {"name": newName},
    );
  }

  Future<String> getLastUpdate(String idUser) async {
    String cloudLastUpdate = "";
    await FirebaseFirestore.instance
        .collection("users")
        .doc(idUser)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print(documentSnapshot.get('lastUpdate'));
        cloudLastUpdate = documentSnapshot.get('lastUpdate');
      } else {
        print('Document does not exist on the database');
      }
    });
    return cloudLastUpdate;
  }

  Future<void> setLastUpdate(String lastUpdate, String idUser) async {
    FirebaseFirestore.instance.collection("users").doc(idUser).update(
      {"lastUpdate": lastUpdate},
    );
  }

  /// Workout

  void addWorkout(Workout workout, String idUser) {
    ExerciseJson exerciseJson = ExerciseJson(exerciseList: workout.listExercise);
    Map<String, dynamic> exerciseMap = exerciseJson.toJson();
    String json = jsonEncode(exerciseMap);

    final users = FirebaseFirestore.instance.collection("workouts");
    final dataWorkout = <String, dynamic>{
      "idWorkout": workout.idWorkout,
      "idUser": idUser,
      "listExercise": json,
      "firstDate": workout.firstDate,
      "lastDate": workout.lastDate,
      "name": workout.name,
      "listExer": workout.listExer,
    };
    users.doc(workout.idWorkout).set(dataWorkout);
  }

  Future<void> uploadWorkouts({
    required List<Workout> workouts,
    required String idUser,
  }) async {
    workouts.forEach((element) {
      addWorkout(element, idUser);
    });
  }

  Future<List<Workout>> getWorkouts(String idUser) async {
    List<Workout> list = [];
    await FirebaseFirestore.instance
        .collection("workouts")
        .where("idUser", isEqualTo: idUser)
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        var decodedJson = jsonDecode(doc["listExercise"]);
        Map<String, dynamic> mapDecodedJson = decodedJson;
        ExerciseJson exerciseJson = ExerciseJson.fromJson(mapDecodedJson);

        List<String> listExer = [];
        List<dynamic> listExerDyn = doc["listExer"];
        listExerDyn.forEach((element) {
          listExer.add(element as String);
        });

        list.add(Workout(
          name: doc["name"],
          idWorkout: doc["idWorkout"],
          firstDate: doc["firstDate"],
          lastDate: doc["lastDate"],
          listExercise: exerciseJson.exerciseList,
          listExer: listExer,
        ));
      });
    });
    list.forEach((element) {
      print('${element.name}');
    });
    return list;
  }

  Future<(int, String)> whoMoreRelevant(String idUser, String localLastUpdate) async {
    String? cloudLastUpdate = "";
    cloudLastUpdate = await getLastUpdate(idUser);
    if (cloudLastUpdate == null) {
      throw CloudLastUpdateNotFoundException(
        "There is no such field or it is empty",
      );
    }
    if (cloudLastUpdate == '') {
      return (-1, cloudLastUpdate);
    }

    var parsedLocalDate = DateFormat(
      BDconstants.dateFirstLastDateWorkoutFormat,
    ).parse(localLastUpdate);
    var parsedCloudDate = DateFormat(
      BDconstants.dateFirstLastDateWorkoutFormat,
    ).parse(cloudLastUpdate);

    var resCompare = parsedCloudDate.compareTo(parsedLocalDate);
    print('resCompare = $resCompare');

    if (localLastUpdate.isEmpty) resCompare = 1;
    if (cloudLastUpdate.isEmpty) resCompare = -1;

    return (resCompare, cloudLastUpdate);
  }

  void editLastUpdate(String lastUpdate, String idUser) {
    FirebaseFirestore.instance
        .collection("users")
        .doc(idUser)
        .update({"lastUpdate": lastUpdate});
  }
}
