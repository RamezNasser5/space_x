import 'package:dio/dio.dart';

class DioServices {
  Dio dio = Dio();
  String baseUrl = "https://api.spacexdata.com/v4/";

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get(baseUrl + endPoint);
    return response.data;
  }
}
