import 'package:dio/dio.dart';

class NetworkProvider {
  static const int _timeOut = 10000;
  static const _baseUrl = 'https://api.github.com/';
  final Dio _dio;

  NetworkProvider({Dio? dio})
      : _dio = dio ?? Dio(_defaultOpts)
          ..interceptors.add(LogInterceptor());

  static BaseOptions get _defaultOpts {
    return BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: _timeOut,
      receiveTimeout: _timeOut,
    );
  }

  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      return await _dio.get(path, queryParameters: queryParameters);
    } on DioError {
      rethrow;
    }
  }
}
