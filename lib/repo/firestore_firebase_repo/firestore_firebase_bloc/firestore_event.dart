part of 'firestore_bloc.dart';

@freezed
class FirestoreEvent with _$FirestoreEvent {
  const factory FirestoreEvent.addUser({
    required User user,
  }) = FirestoreEventAddUserEvent;

  const factory FirestoreEvent.deleteUser({required String idUser}) =
      FirestoreEventDeleteUserEvent;

  const factory FirestoreEvent.editName({
    required String name,
    required String idUser,
  }) = FirestoreEventEditNameEvent;

  const factory FirestoreEvent.editLastUpdate({
    required String lastUpdate,
    required String idUser,
  }) = FirestoreEventEditLastUpdateEvent;

  const factory FirestoreEvent.toInit() = FirestoreEventToInitEvent;
}
