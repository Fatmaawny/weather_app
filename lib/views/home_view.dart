import 'package:flutter/material.dart';

import '../widgets/no_weather_body.dart';
import '../widgets/weather_info_body.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Weather App',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Icon(Icons.search,color: Colors.white,),
        )],
      ),
      body: NoWeatherBody(),
      // body: WeatherInfoBody(),
    );
  }
}
