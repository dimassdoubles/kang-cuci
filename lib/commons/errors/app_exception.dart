class AppException implements Exception {
  final String message;
  AppException(this.message);
}

class ClientException extends AppException {
  ClientException(super.message);
}

class ServerException extends AppException {
  ServerException(super.message);
}