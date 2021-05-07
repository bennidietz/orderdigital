import 'package:dio/dio.dart';
import 'package:forsat/network/base_url.dart';

class ForsatAPI {
  static BaseOptions _baseOptions = new BaseOptions(baseUrl: BASE_URL);

  // for unauthenticated routes
  static Dio dio = new Dio(_baseOptions);

  // for authenticated routes
  static Dio dioAuth() {
    return dio;
  }
}