import 'dart:io';

import 'package:dio/dio.dart';
import 'package:igmur_images_example/app/types/errors/network_error.dart';

NetworkError getErrorFromDioError(DioError error) {
  switch (error.type) {
    case DioErrorType.cancel:
      return const NetworkError.requestCancelled();

    case DioErrorType.connectTimeout:
      return const NetworkError.requestTimeout();

    case DioErrorType.sendTimeout:
      return const NetworkError.sendTimeout();

    case DioErrorType.receiveTimeout:
      return const NetworkError.requestTimeout();

    case DioErrorType.response:
      {
        final statusCode = error.response?.statusCode;

        if (statusCode != null) {
          switch (statusCode) {
            case 400:
              return const NetworkError.badRequest();

            case 401:
              return const NetworkError.unauthorizedRequest();

            case 403:
              return const NetworkError.forbidden();

            case 404:
              final reason = error.response?.statusMessage ?? 'Not Found';
              return NetworkError.notFound(reason);

            case 405:
              return const NetworkError.methodNotAllowed();

            case 409:
              return const NetworkError.conflict();

            case 500:
              return const NetworkError.internalServerError();

            case 503:
              return const NetworkError.serviceUnavailable();

            default:
              return NetworkError.defaultError(
                'Received invalid status code: $statusCode',
              );
          }
        } else {
          return const NetworkError.unexpectedError();
        }
      }

    case DioErrorType.other:
      return error.error is SocketException
          ? const NetworkError.noInternetConnection()
          : NetworkError.defaultError(error.message);

    default:
      return const NetworkError.unexpectedError();
  }
}
