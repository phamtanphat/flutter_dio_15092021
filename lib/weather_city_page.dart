import 'package:flutter/material.dart';
import 'package:flutter_dio_15092021/api_request.dart';
import 'package:flutter_dio_15092021/dio_client.dart';
import 'package:flutter_dio_15092021/gender.dart';
import 'package:flutter_dio_15092021/model/forecast.dart';
import 'package:flutter_dio_15092021/person.dart';
class WeatherCityPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var request = ApiRequest();
    Future<Forecast> response = request.getTempCity("Hasssssss");
    response.then((value) => {
      print(value.toString())
    }).catchError((error) => {
      print(error.toString())
    });
    return Container();
  }
}
