import 'package:dio/dio.dart';
import 'package:pastport/core/network/local/shared_preferences.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    print("Dio class is created");

    dio = Dio(
      BaseOptions(
        connectTimeout: Duration(seconds: 60),
        receiveTimeout: Duration(seconds: 60),
        sendTimeout: Duration(seconds: 60),
        baseUrl: "http://pastpost.somee.com/api",
        receiveDataWhenStatusError: true,
      ),
    );

    dio!.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            await LocalStorage.sharedPreferences.remove('token');
            print("Token expired -> User logged out");
          }

          handler.next(error);
        },
      ),
    );

  }

  // Extract Method refactoring


  static void headersOfAPI()
  {
    dio?.options.headers = {
      'Content-Type' : 'application/json; charset=utf-8',
    };
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async
  {
    return dio!.get(
      options: Options(headers: {'Authorization': 'Bearer ${token}'},),
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token
  }) async {


    return dio!.post(
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
      url,
      data: data,
    );
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {

    headersOfAPI();

    return dio!.delete(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> patchData({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
    Map<String, String>? headers,
  }) async {

    headersOfAPI();

    return dio!.patch(
      url,
      data: data,
      queryParameters: query,
    );
  }
}