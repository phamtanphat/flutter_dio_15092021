import 'package:dio/dio.dart';

class DioClient{
  static final DioClient _dioClient = DioClient._internal();
  Dio? dio;

  DioClient._internal(){
    if (dio == null){
      dio = new Dio(BaseOptions(
          receiveTimeout: 30000,
          connectTimeout: 30000,
          baseUrl: "http://api.openweathermap.org/"
      ));
      dio!.interceptors.add(LogInterceptor(requestBody: true));
      
    }

  }
  factory DioClient(){
    return _dioClient;
  }
}