import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:weatherapp/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setupWeather() async
  {

    Weather instance = Weather('Dehradun');
    await instance.getWeather();

    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'temperature': instance.temperature,
      'min_temp': instance.min_temp,
      'max_temp': instance.max_temp,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'wind_speed': instance.wind_Speed,
      'weather_Con': instance.weather_Con,
      'city': instance.city,
    });

  }

  @override
  void initState() {
    super.initState();
    setupWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white10,
        body:
        Center(
          child: SpinKitFoldingCube(
            color: Colors.white,
            size: 100.0,
          ),
        )
    );
  }
}
