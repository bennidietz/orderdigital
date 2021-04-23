import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My second app"),
          centerTitle: true,
          backgroundColor: Colors.teal[600],
        ),
        body: Center(
            child: Text(
              "This is my second Flutter app",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                color: Colors.green[700],
                fontFamily: "IndieFlower"
              ),
            ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("Click"),
          onPressed: () {},
          backgroundColor: Colors.red[600],
        ),
      )
    );
  }
}