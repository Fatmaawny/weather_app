import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/main.dart';

import '../cubits/get_weather_cubit/get_weather_cubit.dart';
import '../models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weather});
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    var maxtemp = weatherModel.maxtemp.round();
    var mintemp = weatherModel.mintemp.round();
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            getThemeColor(weatherModel.statues),
            getThemeColor(weatherModel.statues).shade200,
            getThemeColor(weatherModel.statues).shade50
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityname,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Updated at " +
                  weatherModel.lastupdatedtime.hour.toString() +
                  ":" +
                  weatherModel.lastupdatedtime.minute.toString(),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network("https:" + weatherModel.image),
                Text(
                  weatherModel.temp.round().toString(),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "max temp :$maxtemp \n min temp :$mintemp",
                  style: TextStyle(fontSize: 19),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              weatherModel.statues,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}

DateTime StringToDate(String value) {
  return DateTime.parse(value);
}
