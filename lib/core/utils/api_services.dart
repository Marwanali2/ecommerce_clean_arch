import 'package:dio/dio.dart';

class ApiServices {
   final String _baseUrl = "https://dummyjson.com/";
   final Dio _dio = Dio();
  ApiServices(Dio dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
