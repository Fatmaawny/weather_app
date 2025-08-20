import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        toolbarHeight: 75,
        title: Text(
          'Search a city',
          style: TextStyle(color: Colors.black, fontSize: 27),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: TextField(
            onSubmitted: (value) async {
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              labelText: "Search",
              hintText: "Enter city name",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//glopal variable
WeatherModel? weatherModel;
