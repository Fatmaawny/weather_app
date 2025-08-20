import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/get_weather_cubit/get_weather_cubit.dart';
class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context)

  {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    var maxtemp = weatherModel.maxtemp.round();
    var mintemp = weatherModel.mintemp.round();
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(weatherModel.cityname,
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 10),
          Text("Updated at "+weatherModel.lastupdatedtime.hour.toString()+":"+weatherModel.lastupdatedtime.minute.toString(),
            style: TextStyle(
                fontSize: 20,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network("https:"+weatherModel.image),
              Text(weatherModel.temp.round().toString(),
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text("max temp :$maxtemp \n min temp :$mintemp",
                style: TextStyle(
                    fontSize: 19,
                ),
                textAlign: TextAlign.right,
              )
            ],
          ),
          SizedBox(height: 30),
          Text(weatherModel.statues,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
DateTime StringToDate (String value){
  return DateTime.parse(value);
}