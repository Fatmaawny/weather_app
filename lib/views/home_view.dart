import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/views/search_view.dart';

import '../cubits/get_weather_cubit/get_weather_cubit.dart';
import '../cubits/get_weather_cubit/get_weather_states.dart';
import '../widgets/no_weather_body.dart';
import '../widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 75,
        title: Text(
          ' Weather App',
          style: TextStyle(fontSize: 27),
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
              icon: Icon(Icons.search, size: 30),
            ),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if(state is InitialWeatherState)
            {
              return NoWeatherBody();
            }
          else if(state is WeatherLoadedState)
            {
              return WeatherInfoBody(weather: state.weatherModel,);
            }
          else return Center(child: Text("oops, there was an error "));
          }
        ,
      ),
      // body: WeatherInfoBody(),
    );
  }
}
