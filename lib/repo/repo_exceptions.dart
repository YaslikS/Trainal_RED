
class CloudLastUpdateNotFoundException implements Exception {
  final String message;

  CloudLastUpdateNotFoundException(this.message);

  @override
  String toString() {
    return message;
  }
}

class UnexpectedResultComparingDatesException implements Exception {
  final String message;

  UnexpectedResultComparingDatesException(this.message);

  @override
  String toString() {
    return message;
  }
}