import 'package:flutter/material.dart';
import 'package:flutter_dio_15092021/api_request.dart';
import 'package:flutter_dio_15092021/bloc/weather_bloc.dart';
import 'package:flutter_dio_15092021/bloc/weather_event.dart';
import 'package:flutter_dio_15092021/bloc/weather_state.dart';
import 'package:provider/provider.dart';

class WeatherCityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => ApiRequest()),
        ProxyProvider<ApiRequest, WeatherBloc>(
          create: (context) => WeatherBloc(),
          update: (context, apiRequest, bloc) {
            bloc!.updateApiRequest(apiRequest);
            return bloc;
          },
        )
      ],
      child: Consumer<WeatherBloc>(
        builder: (context, bloc, child) {
          return Container(
            padding: const EdgeInsets.all(5),
            constraints: BoxConstraints.expand(),
            child: Column(
              children: [
                searchBox(bloc),
                Expanded(
                    child: Center(
                        child: StreamProvider<WeatherState>.value(
                            value: bloc.stateController.stream,
                            initialData: WeatherStateInit(),
                            child: Consumer<WeatherState>(
                              builder: (context, state, child){
                                if (state is WeatherStateFail){
                                  return Text(state.message);
                                }
                                if (state is WeatherStateSuccess){
                                  return Text(state.forecast.main.temp.toString());
                                }
                                return SizedBox();
                              },
                            ),
                        )
                    ))
              ],
            ),
          );
        },
      ),
    );
  }

  Widget searchBox(WeatherBloc bloc) {
    return TextField(
      onSubmitted: (text) {
        bloc.eventController.sink.add(WeatherEventSearchCity(cityName: text));
      },
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}
