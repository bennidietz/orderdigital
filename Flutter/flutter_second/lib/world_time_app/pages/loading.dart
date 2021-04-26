import 'package:flutter/material.dart';
import 'package:flutter_second/world_time_app/services/weather_fetcher.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  setUpWeatherFetcher() {
    WeatherFetcher("London").getWeather();
  }

  @override
  void initState() {
    super.initState();
    setUpWeatherFetcher();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading screen"),
    );
  }
}
