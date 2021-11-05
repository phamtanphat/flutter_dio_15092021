import 'dart:async';

import 'package:flutter_dio_15092021/api_request.dart';
import 'package:flutter_dio_15092021/bloc/weather_event.dart';
import 'package:flutter_dio_15092021/bloc/weather_state.dart';

class WeatherBloc {
  late ApiRequest _apiRequest;

  StreamController<WeatherEvent> eventController = StreamController();
  StreamController<WeatherState> stateController = StreamController();

  void updateApiRequest(ApiRequest apiRequest){
    _apiRequest = apiRequest;
  }
  WeatherBloc(){

    eventController.stream.listen((event) {
        if(event is WeatherEventSearchCity){
          searchCity(event);
        }
    });
  }

  void searchCity(WeatherEventSearchCity event) async{
    try{
      var forecast = await _apiRequest.getTempCity(event.cityName);
      stateController.sink.add(WeatherStateSuccess(forecast: forecast));
    }catch (e) {
      stateController.sink.add(WeatherStateFail(message: e.toString()));
    }
  }

  void disposed(){
    eventController.close();
    stateController.close();
  }


}

