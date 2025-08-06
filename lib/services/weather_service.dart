import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  Dio dio = Dio();
  WeatherService(this.dio);
  final String BaseUrl = "http://api.weatherapi.com/v1";
  final String ApiKey = "bb69ebcac1354734bd3132500250407";

  Future<WeatherModel?> getWeatherService({required String cityName}) async {
    try {
      Response response = await dio.get(
        "$BaseUrl/forecast.json?key=$ApiKey&q=$cityName&days=1",
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMassege =
          e.response?.data['error']['message'] ?? "something went wrong";
      throw (Exception(errorMassege));
    } catch (e) {
      log(e.toString());
      throw (Exception("oops there was an error"));
    }
  }
}
