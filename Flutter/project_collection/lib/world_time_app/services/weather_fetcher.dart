import 'dart:convert';
import 'package:http/http.dart';

class WeatherFetcher {
  String placeName;

  WeatherFetcher(this.placeName){
    getWeather();
  }

  Future<WeatherData> getWeather() async {
    try {
      Response queryResponse = await get(Uri.parse(
          "https://www.metaweather.com/api/location/search/?query=$placeName"
      ));
      int id = jsonDecode(queryResponse.body)[0]["woeid"];
      Response weatherString = await get(Uri.parse(
          "https://www.metaweather.com/api/location/$id/"
      ));
      Map weatherResponse = jsonDecode(weatherString.body);
      var weatherData = WeatherData(weatherResponse);
      return weatherData;
    } catch (e) {
      print("caught error: $e");
      return null;
    }
  }
}

class WeatherData {
  double temp;
  String stateName;

  WeatherData(Map response) {
    var weatherJson = response["consolidated_weather"][0];
    stateName = weatherJson["weather_state_name"];
    temp = ((weatherJson["the_temp"]*10).roundToDouble()/10.0);
  }
}

class City {
  String name;
  String icon;

  City(this.name, {this.icon});
}