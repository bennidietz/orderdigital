import 'package:flutter/material.dart';
import 'package:flutter_second/world_time_app/services/weather_fetcher.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<City> cities = [
    City("London", icon: "uk.png"),
    City("Berlin", icon: "germany.png"),
    City("Dortmund", icon: "germany.png"),
    City("San Francisco", icon: "usa.png"),
    City("Athen", icon: "greece.png"),
    City("New York", icon: "usa.png"),
    City("Hamburg", icon: "germany.png"),
    City("Santorini", icon: "greece.png"),
    City("Paris"),
    City("Wien"),
    City("Amsterdam"),
    City("Dresden", icon: "germany.png"),
    City("Sardinien"),
  ];


  onClickTile(context, index) async {
    var data = await WeatherFetcher(cities[index].name).getWeather();
    Navigator.pop(context, {
      'city': cities[index].name,
      'weatherData': data
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[00],
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[700],
        title: Text("Choose a location"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                onClickTile(context, index);
              },
              title: Text(cities[index].name),
                leading: (cities[index].icon != null) ?
                CircleAvatar(
                  backgroundImage: AssetImage("assets/${cities[index].icon}"),
                ) : SizedBox(width: 10.0,)

          ),
          );
        },
      ),
    );
  }
}
