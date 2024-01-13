abstract class ApiConsumer {
  Future<dynamic> get(
      {required String path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers});
  Future<dynamic> post(
      {required String path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers});
  Future<dynamic> put(
      {required String path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers});
  Future<dynamic> del(
      {required String path,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers});
}
