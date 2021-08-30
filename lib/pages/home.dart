import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};


  @override
  Widget build(BuildContext context) {


    data = ModalRoute.of(context)!.settings.arguments as Map;


    return Scaffold(
      backgroundColor: Colors.blue[200],

      body: SafeArea(
        child: Container(

        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/bgimage.jpg'),
        fit: BoxFit.cover,
        )
        ),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: (){},
                        icon: Icon(
                          Icons.edit_location,
                        ),
                      iconSize: 35.0,
                      color: Colors.white,

                    ),
                  ),

                  Expanded(
                      flex: 10,
                      child: Center(
                          child: Text(
                              '${data['city']}',
                            style: TextStyle(
                              letterSpacing: 5.0,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                      )
                  ),

                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.more_vert,
                      ),
                      iconSize: 25.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),

              SizedBox(height: 120.0,),

              Text(
                  '${data['temperature']} \u2103',
                  style: TextStyle(
                    letterSpacing: 3.0,
                    fontSize: 70.0,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
              ),

              SizedBox(height: 10.0,),

              Text(
                  '${data['weather_Con']}',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 15.0,
                color: Colors.white,
              ),
              ),

              Text('AQI 120',
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.white,
                ),
              ),


              SizedBox(height: 100.0,),

               Padding(
                 padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                 child: Card(
                   color: Colors.transparent,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20.0,),

                        Text('Details',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),



                        SizedBox(height: 20.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('${data['wind_speed']}Km/h',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Image(
                              image: AssetImage('assets/wind.png'),
                              width: 25.0,
                              height: 25.0,
                              ),

                            SizedBox(width: 100.0),

                            Text('${data['pressure']} pa',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Image(
                              image: AssetImage('assets/atmospheric.png'),
                              width: 25.0,
                              height: 25.0,
                            ),
                          ],
                        ),

                        SizedBox(height: 30.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('${data['humidity']} %',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Image(
                              image: AssetImage('assets/humidity.png'),
                              width: 25.0,
                              height: 25.0,
                            ),

                            SizedBox(width: 100.0),

                            Text('9.8Km/h',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Icon(Icons.add,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                 ),
               ),

            ]
      )
      ),
    )
    );
  }
}
