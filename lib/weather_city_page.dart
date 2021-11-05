import 'package:flutter/material.dart';
import 'package:flutter_dio_15092021/api_request.dart';
import 'package:flutter_dio_15092021/bloc/weather_bloc.dart';
import 'package:provider/provider.dart';

class WeatherCityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => ApiRequest()),
        ProxyProvider<ApiRequest,WeatherBloc>(
          create: (context) => WeatherBloc(),
          update: (context ,apiRequest , bloc){
            bloc!.updateApiRequest(apiRequest);
            return bloc;
          },
        )
      ],
      child: Container(
        padding: const EdgeInsets.all(5),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            searchBox(),
            Expanded(child: Center(child: Text("Demo")))
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return TextField(
      onSubmitted: (text) {},
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}
