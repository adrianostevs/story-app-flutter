import 'package:dio/dio.dart';
import 'package:story_app_flutter/data/service/api_constants.dart';

class RemoteClient {
  final dio = Dio();

  Future<dynamic> get(String url, dynamic query) async {
    Response response;
    response =
        await dio.get(ApiConstants.BASE_URL + url, queryParameters: query);
    return response;
  }

  Future<dynamic> post(String url, dynamic data) async {
    Response response;
    response = await dio.post(ApiConstants.BASE_URL + url, data: data);
    return response;
  }
}
