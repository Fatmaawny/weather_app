import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/weather_model.dart';
import '../../services/weather_service.dart';
import '../../views/search_view.dart';
import 'get_weather_states.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(InitialWeatherState());
late WeatherModel weatherModel;
  getWeather(String cityName) async {
    try {
      weatherModel = (await WeatherService(
        Dio(),
      ).getWeatherService(cityName: cityName))!;
      emit(WeatherLoadedState(weatherModel!));
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
