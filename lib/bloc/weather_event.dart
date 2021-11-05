abstract class WeatherEvent{

}

class WeatherEventSearchCity extends WeatherEvent{
  late String cityName;

  WeatherEventSearchCity({required this.cityName});
}

