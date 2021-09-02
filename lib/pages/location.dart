
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/services/weather.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  List<Weather> locations = [
    Weather('Dehradun'),
    Weather('Delhi'),
    Weather('Haridwar'),
    Weather('Gujarat'),
    Weather('Jaipur'),
    Weather('Lucknow'),
    Weather('Mumbai'),
    Weather('Noida'),
  ];

  void updateWeather(index) async{

    Weather instance = locations[index];

    await instance.getWeather();

    Navigator.pop(context,{
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent[300],
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
      ),
      body:
      ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: (){
                    updateWeather(index);
                  },
                  title: Text(locations[index].city),

                ),
              ),
            );

          }
      ),
    );
  }
}
