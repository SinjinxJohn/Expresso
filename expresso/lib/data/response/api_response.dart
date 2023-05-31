import 'package:expresso/data/response/status.dart';

class ApiResponse<T> {
  String? message;
  Status? status;
  T? data;

  ApiResponse(this.message, this.status, this.data);
  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.error() : status = Status.ERROR;
  ApiResponse.completed() : status = Status.COMPLETED;

  @override
  String toString() {
    // TODO: implement toString
    return "Status: $status \n Message: $message \n Data: $data";
  }
}
