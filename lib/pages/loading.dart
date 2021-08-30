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

  // void getData() async{
  //   Response response = await get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=london&appid=9dbecf09093d40c7d8a6c21b6a1a4524'));
  //   Map  Data = jsonDecode(response.body);
  //   Map weather = Data['wind'];
  //   //Map w = weather[0];
  //   print(weather['speed']);
  // }

  void setupWeather() async
  {
    Weather instance = Weather('Haridwar');
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
    //getData();

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
