class WeatherModel {
  final String cityname;
  final DateTime lastupdatedtime;
  final String image;
  final double temp;
  final double maxtemp;
  final double mintemp;
  final String statues;
  WeatherModel({required this.cityname,
    required this.lastupdatedtime,
    required this.image,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.statues,}
  );
  factory WeatherModel.fromJson(json){
    return WeatherModel(
      cityname:json['location']['name'],
      lastupdatedtime: DateTime.parse(json['current']['last_updated']) ,
      temp:json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxtemp:json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp:json['forecast']['forecastday'][0]['day']['mintemp_c'],
      statues:json['forecast']['forecastday'][0]['day']['condition']['text'],
      image:json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
