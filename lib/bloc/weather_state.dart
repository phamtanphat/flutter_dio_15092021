import 'package:flutter_dio_15092021/model/forecast.dart';

abstract class WeatherState{

}

class WeatherStateSuccess extends WeatherState{
  late Forecast forecast;

  WeatherStateSuccess({required this.forecast});

}

class WeatherStateFail extends WeatherState{
  late String message;

  WeatherStateFail({required this.message});

}

