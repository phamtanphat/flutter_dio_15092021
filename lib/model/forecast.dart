import 'package:flutter_dio_15092021/model/sys.dart';
import 'package:flutter_dio_15092021/model/weather.dart';
import 'package:flutter_dio_15092021/model/wind.dart';

import 'clouds.dart';
import 'coord.dart';
import 'main_temp.dart';

class Forecast {
  late Main main;

  Forecast(
      {required this.main});

  Forecast.fromJson(Map<String, dynamic> json) {
    main = (json['main'] != null ? new Main.fromJson(json['main']) : null)!;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.main != null) {
      data['main'] = this.main.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'Forecast{main: $main}';
  }
}
