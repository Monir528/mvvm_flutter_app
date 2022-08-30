import 'package:mvvm_project/data/response/status.dart';

class ApiResponse<T> {

  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.complete() : status = Status.COMPLETED;
  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.error() : status = Status.ERROR;

  @override
  String toString() {
    return "Status: $status\n Message: $message\n Data: $data";
  }

}