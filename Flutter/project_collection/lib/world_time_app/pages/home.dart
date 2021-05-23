import 'package:flutter/material.dart';
import 'package:flutter_second/world_time_app/services/weather_fetcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    var wData  = (data["weatherData"] as WeatherData);
    return MaterialApp(
      home: Scaffold(
        body:
            SafeArea(
              child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,120.0,0,0),
                  child: Column(children: [
                      TextButton.icon(
                          onPressed: () async {
                            dynamic result = await Navigator.pushNamed(
                                context, "/world_time/location"
                            );
                            setState(() {
                              data["weatherData"] = result["weatherData"];
                              data["city"] = result["city"];
                            });
                          },
                          icon: Icon(Icons.edit_location),
                          label: Text("Edit location")
                      ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data["city"],
                          style: TextStyle(
                            fontSize: 26.0,
                            letterSpacing: 2.0
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40.0),
                    Text(
                       wData.stateName,
                      style: TextStyle(
                        fontSize: 16.0
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "${wData.temp} °C",
                      style: TextStyle(
                          fontSize: 16.0
                      ),
                    )
                    ],
                  ),
                )
            )
      ),
    );
  }
}
