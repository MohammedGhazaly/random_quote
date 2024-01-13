import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:quote_gen_clean_arc/core/api/api_constants.dart';
import 'package:quote_gen_clean_arc/core/api/api_consumer.dart';

class DioConsumer implements ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    dio.options
      ..baseUrl = ApiConstants.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = false;
  }
  @override
  Future<dynamic> del(
      {required String path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers}) async {
    dio.delete(path,
        queryParameters: queryParameters,
        data: body,
        options: Options(
          headers: headers,
        ));
  }

  @override
  Future<dynamic> get(
      {required String path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    dio.get(path,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ));
  }

  @override
  Future<dynamic> post(
      {required String path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers}) async {
    dio.post(
      path,
      data: body,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
      ),
    );
  }

  @override
  Future<dynamic> put(
      {required String path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers}) async {
    dio.put(path,
        queryParameters: queryParameters,
        data: body,
        options: Options(
          headers: headers,
        ));
  }
}
