import 'package:flutter/material.dart';
class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    int maxtemp = 34;
    int mintemp = 17;
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("El Minya",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 10),
          Text("Updated at 1:10 AM",
            style: TextStyle(
                fontSize: 20,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Image.asset("assets/images/clear.png"),
              Text("17",
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
          Text("Sunny",
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
