import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white10,

      body: SafeArea(
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
                              'Haridwar',
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
                  '30 \u2103',
                  style: TextStyle(
                    letterSpacing: 3.0,
                    fontSize: 80.0,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
              ),

              SizedBox(height: 10.0,),

              Text(
                  'Cloudy',
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

              Column(
                children: [
                  Text('Details',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 20.0,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text('9.8Km/h',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.add,
                        color: Colors.white,),

                      SizedBox(width: 100.0),

                      Text('9.8Km/h',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.add,
                        color: Colors.white,),
                    ],
                  ),

                  SizedBox(height: 50.0,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text('9.8Km/h',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.add,
                        color: Colors.white,),

                      SizedBox(width: 100.0),

                      Text('9.8Km/h',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.add,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              )
            ]
      )
      ),
    );
  }
}
