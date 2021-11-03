import 'package:flutter/material.dart';
import 'package:flutter_dio_15092021/weather_city_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo Dio"),
        ),
        body: WeatherCityPage(),
      ),
    );
  }
}