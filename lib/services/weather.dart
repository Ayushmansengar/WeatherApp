import 'dart:convert';

import 'package:http/http.dart';
class Weather{

  late String city;
  late double temperature;
  late double min_temp;
  late double max_temp;
  late int pressure;
  late int humidity;
  late double wind_Speed;
  late String weather_Con;

  String apiKey = '9dbecf09093d40c7d8a6c21b6a1a4524';

  Weather(this.city);

  Future<void> getWeather() async
  {
    try{
      Response response = await get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey'));
      Map Data = jsonDecode(response.body);
      List w = Data['weather'] ;
      Map weather = w[0] ;
      Map temp = Data['main'] ;
      Map wind = Data['wind'] ;

      weather_Con = weather['main'];

      //Converting kelvin to celsius
      double tem = temp['temp'] as double;
      temperature = (tem-273.15).roundToDouble() ;

      tem = temp['temp_min'] ;
      min_temp = (tem-273.15).roundToDouble();
      tem = temp['temp_max'] ;
      max_temp = (tem-273.15).roundToDouble();

      pressure = temp['pressure'];

      humidity = temp['humidity'];

      wind_Speed = wind['speed'];

    }
    catch(e){
      print('Oops....$e');
    }




  }


}