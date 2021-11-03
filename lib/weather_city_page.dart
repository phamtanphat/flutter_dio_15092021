import 'package:flutter/material.dart';
import 'package:flutter_dio_15092021/dio_client.dart';
import 'package:flutter_dio_15092021/gender.dart';
import 'package:flutter_dio_15092021/person.dart';
class WeatherCityPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var person = Person("Teo", GENDER.MALE);
    print(person.toString());
    return Container();
  }
}
