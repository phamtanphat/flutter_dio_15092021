import 'dart:async';

import 'package:flutter_dio_15092021/api_request.dart';
import 'package:flutter_dio_15092021/bloc/weather_event.dart';
import 'package:flutter_dio_15092021/bloc/weather_state.dart';

class WeatherBloc {
  late ApiRequest _apiRequest;

  StreamController<WeatherEvent> eventController = StreamController();

  WeatherBloc(ApiRequest apiRequest){
    _apiRequest = apiRequest;

    eventController.stream.listen((event) {

    });


  }

  void disposed(){
    eventController.close();
  }


}

