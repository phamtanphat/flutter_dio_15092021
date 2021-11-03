import 'package:dio/dio.dart';
import 'package:flutter_dio_15092021/dio_client.dart';

class ApiRequest{
  late Dio dio;
  ApiRequest(){
    dio = DioClient().dio!;
  }

  void getTempCity(String cityName){
    
  }
}