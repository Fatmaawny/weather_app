import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/views/home_view.dart';
import 'cubits/get_weather_cubit/get_weather_cubit.dart';
import 'cubits/get_weather_cubit/get_weather_states.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          final weatherModel =
              BlocProvider.of<GetWeatherCubit>(context).weatherModel;

          return Builder(
            builder: (context) {
              return BlocBuilder<GetWeatherCubit, WeatherStates>(
                builder: (context, state) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: ThemeData(
                      fontFamily:"Raleway" ,
                      useMaterial3: false,
                      primarySwatch: getThemeColor(weatherModel?.statues),
                    ),
                    home: const HomeView(),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  } else {
    switch (condition) {
      case "Sunny":
        return Colors.yellow;


      case "Light drizzle":
      case "Patchy light drizzle":
      case "Light rain":
        return Colors.lightBlue;

      case "Cloudy":
      case "Freezing fog":
      case "Mist":
        return Colors.blueGrey;

      case "Overcast":
      case "Fog":
      case "Blizzard":
      case "Light snow":
      case "Moderate snow":
      case "Heavy snow":
        return Colors.grey;

      case "Patchy rain possible":
      case "Patchy light rain":
      case "Light rain shower":
      case "Moderate or heavy rain shower":
        return Colors.blue;

      case "Patchy snow possible":
      case "Patchy light snow":
      case "Light snow showers":
        return Colors.lightBlue;

      case "Patchy sleet possible":
      case "Light sleet":
      case "Light sleet showers":
      case "Moderate or heavy sleet":
      case "Moderate or heavy sleet showers":
        return Colors.indigo;

      case "Patchy freezing drizzle possible":
      case "Freezing drizzle":
      case "Heavy freezing drizzle":
      case "Light freezing rain":
      case "Moderate or heavy freezing rain":
      case "Patchy rain nearby":
        return Colors.cyan;

      case "Thundery outbreaks possible":
      case "Patchy light rain with thunder":
      case "Moderate or heavy rain with thunder":
      case "Patchy light snow with thunder":
      case "Moderate or heavy snow with thunder":

        return Colors.deepPurple;

      case "Blowing snow":
        return Colors.blue;

      case "Patchy moderate snow":
      case "Patchy heavy snow":
      case "Moderate or heavy snow showers":
        return Colors.blueGrey;

      case "Ice pellets":
      case "Partly Cloudy":
      case "Light showers of ice pellets":
      case "Moderate or heavy showers of ice pellets":
        return Colors.teal;

      case "Heavy rain at times":
      case "Heavy rain":
      case "Torrential rain shower":
        return Colors.indigo;

      default:
        return Colors.teal;
    }
  }
}
//cairo
//tokyo
//
