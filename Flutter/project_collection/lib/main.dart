import 'package:flutter/material.dart';
import 'package:flutter_second/router/route_constants.dart' as my_routes;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: my_routes.routes,
    initialRoute: "/overview",
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                                Navigator.pushNamed(context, "/world_time/");
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
