import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
            SafeArea(
              child:
                Column(children: [
                    TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, "/world_time/location");
                        },
                        icon: Icon(Icons.edit_location),
                        label: Text("Edit location")
                    )
                  ],
                )
            )
      ),
    );
  }
}
