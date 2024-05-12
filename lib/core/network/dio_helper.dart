import 'dart:io';
import 'package:dio/dio.dart';




class DioHelper {
  String? url;
  Object? data;

  final dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      HttpHeaders.userAgentHeader: 'dio',
      'api': '1.0.0',
    },
    contentType: Headers.jsonContentType,
    responseType: ResponseType.json,
  ));


  Future<Response<dynamic>> postData(
      {required String url, required Object? data}) async {
    return dio.post(
      url,
      data: data,
      options: Options(
        contentType: Headers.jsonContentType,
        followRedirects: false,
        validateStatus: (status) => true,
      ),
    );
  }

}
