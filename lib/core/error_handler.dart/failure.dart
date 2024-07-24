import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errorMessage: 'Connection Timeout with Api Server');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send Timeout with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive Timeout with Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure(errorMessage: 'Bad response');
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Your request was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'Connection error');
      default:
        return ServerFailure(errorMessage: 'Oops there was an error , please try again');
        
    }
  }
}
