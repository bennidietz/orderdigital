import 'package:flutter/material.dart';
import 'package:flutter_second/quote_app/quotelist.dart';
import 'package:flutter_second/profile_app/profile.dart';
import 'package:flutter_second/world_time_app/pages/choose_location.dart';
import 'package:flutter_second/world_time_app/pages/home.dart';
import 'package:flutter_second/world_time_app/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/world_time/' : (context) => Loading(),
      '/world_time/home': (context) => Home(),
      '/world_time/location': (context) => ChooseLocation(),
      '/profile/': (context) => ProfileApp(),
      '/overview' : (context) => MyApp(),
      '/quotelist/': (context) => QuoteList()
    },
    initialRoute: "/world_time/",
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            backgroundColor: Colors.grey[900],
            appBar: AppBar(
              title: Text("My test apps"),
              centerTitle: true,
              backgroundColor: Colors.grey[850],
              elevation: 0.0,
            ),
            body: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/profile/");
                              },
                              child: Text("Profile App")
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/quotelist/");
                              },
                              child: Text("Data list")
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/world_time/home");
                              },
                              child: Text("World Time")
                          ),
                        ],
                      )
                    ]
                )
            )
        )
    );
  }
}
