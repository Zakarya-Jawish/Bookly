import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  const Failure(this.errMessage);
}

class FailureServer extends Failure {
  FailureServer(super.errMessage);
  factory FailureServer.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return FailureServer(
            'Connection timed out. Please check your internet connection and try again.');
      case DioExceptionType.sendTimeout:
        return FailureServer(
            'Failed to send data to server. Please try again later.');
      case DioExceptionType.receiveTimeout:
        return FailureServer(
            'Failed to receive data from server. Please try again later.');
      case DioExceptionType.badCertificate:
        return FailureServer(
            'Security certificate verification failed. Please contact support.');
      case DioExceptionType.badResponse:
        return FailureServer.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return FailureServer('Request was cancelled. Please try again.');
      case DioExceptionType.connectionError:
        return FailureServer(
            'Failed to connect to server. Please check your internet connection.');
      case DioExceptionType.unknown:
        return FailureServer(
            'An unexpected error occurred. Please try again later.');
    }
  }
  factory FailureServer.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return FailureServer(response['error']['message']);
    } else if (statusCode == 404) {
      return FailureServer('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return FailureServer('Internal Server error, Please try later');
    } else {
      return FailureServer('Opps There was an Error, Please try again');
    }
  }
}
