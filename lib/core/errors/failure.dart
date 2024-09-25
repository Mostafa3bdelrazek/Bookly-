import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Time out With Api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Time out With Api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive Time out With Api server');
      case DioExceptionType.badCertificate:
        return ServerFailure('bad Certificate With Api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api server was Cancel');
      case DioExceptionType.connectionError:
        return ServerFailure('No internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Oops , there was an error, pls try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('your request was not found ,pls try later');
    } else if (statusCode >= 500) {
      return ServerFailure('There is a problem with server ,pls try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('There is an error, pls try again');
    }
  }
}
