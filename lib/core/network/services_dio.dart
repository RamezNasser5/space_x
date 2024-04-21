import 'package:dio/dio.dart';

class DioServices {
  final Dio dio;
  String baseUrl = "https://api.spacexdata.com/v4/";

  DioServices(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get(baseUrl + endPoint);
    return response.data;
  }
}
