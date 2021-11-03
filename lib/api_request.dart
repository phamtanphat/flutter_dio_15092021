import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_dio_15092021/dio_client.dart';

import 'model/forecast.dart';

class ApiRequest{
  late Dio dio;
  ApiRequest(){
    dio = DioClient().dio!;
  }

  Future<Forecast> getTempCity(String cityName) async{
    Completer<Forecast> completer = Completer();
    try{
      Response data = await dio.get("data/2.5/weather" , queryParameters: {
        "appid" : "86183a23377ed034aef7aad102f43d64",
        "units" : "metric",
        "q" : cityName,
      });
      Forecast forecast = Forecast.fromJson(data.data);
      completer.complete(forecast);
    } on DioError catch(errorDio){
      completer.completeError(Exception(errorDio.response!.data['message']));
    } catch(e){
      completer.completeError(Exception(e));
    }
    return completer.future;
  }
}