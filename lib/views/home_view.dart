import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';

import '../widgets/no_weather_body.dart';
import '../widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 75,
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.white, fontSize: 27),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchView()),
                );
              },
              icon: Icon(Icons.search, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
      body: NoWeatherBody(),
      // body: WeatherInfoBody(),
    );
  }
}
