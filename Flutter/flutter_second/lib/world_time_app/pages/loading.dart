import 'package:flutter/material.dart';
import 'package:flutter_second/world_time_app/services/weather_fetcher.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  var city = "London";

  setUpWeatherFetcher() async {
    var data = await WeatherFetcher(city).getWeather();
      Navigator.pushReplacementNamed(context, '/world_time/home', arguments: {
        'city': city,
        'weatherData': data
      });
  }

  @override
  void initState() {
    super.initState();
    setUpWeatherFetcher();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.redAccent,
          size: 50.0,
        ),
        ),
      );
  }
}
