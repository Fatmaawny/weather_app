import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_service.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("No Weather Yet  ", style: TextStyle(fontSize: 27)),
              Icon(Icons.cloud, color: Color(0xFF6498BD), size: 30),
              SizedBox(width: 5),
              Icon(Icons.electric_bolt, color: Color(0xFFC6B354), size: 30),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Search for a city ", style: TextStyle(fontSize: 27)),
              Icon(Icons.search, color: Color(0xFF000000), size: 30),
              Icon(
                Icons.location_city_rounded,
                color: Color(0xFFC6B354),
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
