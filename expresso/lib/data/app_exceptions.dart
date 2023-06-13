class AppException implements Exception {
  final message;
  final prefix;

  AppException([this.message, this.prefix]);

  AppException._(this.message, this.prefix);

  @override
  String toString() {
    return '$prefix$message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message, "No Internet Connection");

  FetchDataException._(String? message, String prefix)
      : super._(message, prefix);
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, "Invalid Request");

  BadRequestException._(String? message, String prefix)
      : super._(message, prefix);
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message])
      : super(message, "Unauthorized Request");

  UnauthorizedException._(String? message, String prefix)
      : super._(message, prefix);
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, "Invalid Input");

  InvalidInputException._(String? message, String prefix)
      : super._(message, prefix);
}

class NotFoundException extends AppException {
  NotFoundException([String? message]) : super(message, "User Not Found");

  NotFoundException._(String? message, String prefix)
      : super._(message, prefix);
}

class NoContentException extends AppException {
  NoContentException([String? message]) : super(message, "No content found");

  NoContentException._(String? message, String prefix)
      : super._(message, prefix);
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, " An unexpected error occurred on the server while processing the request.");

  ServerException._(String? message, String prefix)
      : super._(message, prefix);
}
