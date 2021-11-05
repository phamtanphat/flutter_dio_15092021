import 'package:flutter/material.dart';

class WeatherCityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      constraints: BoxConstraints.expand(),
      child: Column(
        children: [
          searchBox(),
          Expanded(child: Center(child: Text("Demo")))
        ],
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
