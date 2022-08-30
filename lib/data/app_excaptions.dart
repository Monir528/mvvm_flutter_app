class AppException implements Exception {
  String _message;
  String _prefix;

  AppException(this._message, this._prefix);

  @override
  String toString() {
    return "$_message $_prefix";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message!, "error during communication");
}

class DadRequestException extends AppException {
  DadRequestException([String? message]) : super(message!, "Invalid request");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([String? message])
      : super(message!, "Unauthorised request");
}
