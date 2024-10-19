import 'package:dio/dio.dart';
import 'package:igmur_images_example/app/constants/app_constants.dart';

class HeadersInterceptor extends InterceptorsWrapper {
  static HeadersInterceptor? _instance;

  factory HeadersInterceptor() => _instance ?? HeadersInterceptor._internal();

  HeadersInterceptor._internal() {
    _instance = this;
  }

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final headers = <String, dynamic>{};

    headers['Authorization'] = 'Client-ID ${AppConstants.clientId}';

    options.headers.addAll(headers);

    return super.onRequest(options, handler);
  }
}
