import 'dart:developer';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:wheel_crm/core/network/entity/auth_info.dart';
import 'package:wheel_crm/core/network/http_error_codes.dart';
import 'package:wheel_crm/core/network/http_paths.dart';
import 'package:wheel_crm/core/service/auth_service.dart';
import 'package:wheel_crm/injection/injection.dart';

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

@singleton
class HttpClient {
  final Dio _dio;
  final _logInterceptor = LogInterceptor();
  final AuthService _authService = getIt<AuthService>();

  HttpClient(this._dio);

  void _addPublicHeaders(RequestOptions options) {
    options.headers[HttpHeaders.contentTypeHeader] = 'application/json';
  }

  void _addPrivateHeaders(RequestOptions options) {
    options.headers[HttpHeaders.contentTypeHeader] = 'application/json';
    log('Bearer ${_authService.cachedUser?.tokenAccess}');
    options.headers[HttpHeaders.authorizationHeader] = 'Bearer ${_authService.cachedUser?.tokenAccess}';
  }

  void _addPrivateInterceptor(bool isRefresh) async {
    _dio.interceptors.add(PrettyDioLogger());
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          _addPrivateHeaders(options);
          log('onRequestInterceptor ${options.path} ${options.data}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          log('onResponseInterceptor ${response.requestOptions.method} ${response.realUri.path} - ${response.statusCode} ${response.data["message"] ?? ''}');
          if (response.statusCode! >= badRequest) {
            return handler.reject(DioException(response: response, requestOptions: response.requestOptions));
          }
          return handler.next(response);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == unauthorizedError) {
            await _refreshToken();
            final newToken = _authService.cachedUser?.tokenAccess;

            error.requestOptions.headers[HttpHeaders.authorizationHeader] = 'Bearer $newToken';

            final response = await _retry(error.requestOptions);
            return handler.resolve(response);
          } else {
            return handler.reject(error);
          }
        },
      ),
    );
  }

  Future<void> _refreshToken() async {
    if (_authService.cachedUser == null || _authService.cachedUser!.tokenRefresh == null) {
      throw Exception('Cached user is null or refresh token is null');
    }

    final response = await _dio.get(HttpPaths.refreshToken(_authService.cachedUser!.tokenRefresh!));

    if (response.statusCode == 200) {
      _authService.cachedUser = AuthData.fromJson(response.data);
    } else {
      throw DioException.badResponse(
        statusCode: response.statusCode!,
        requestOptions: response.requestOptions,
        response: response,
      );
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return _dio.request<dynamic>(requestOptions.path,
        data: requestOptions.data, queryParameters: requestOptions.queryParameters, options: options);
  }

  void _addPublicInterceptor() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          _addPublicHeaders(options);
          return handler.next(options);
        },
      ),
    );
  }

  void _switchInterceptor(bool isSecure, [bool isRefresh = false]) {
    _dio.interceptors.clear();
    _dio.interceptors.add(_logInterceptor);

    if (isSecure) {
      _addPrivateInterceptor(isRefresh);
    } else {
      _addPublicInterceptor();
    }
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    void Function(int, int)? onReceiveProgress,
    bool isSecure = true,
    bool isRefresh = false,
  }) {
    _switchInterceptor(isSecure, isRefresh);

    return _dio.get(
      path,
      queryParameters: queryParameters,
      options: options,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    bool isSecure = true,
  }) {
    _switchInterceptor(isSecure);

    return _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response> patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    bool isSecure = true,
  }) {
    _switchInterceptor(isSecure);

    return _dio.patch(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    bool isSecure = true,
  }) {
    _switchInterceptor(isSecure);

    return _dio.put(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    bool isSecure = true,
  }) {
    _switchInterceptor(isSecure);

    return _dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
