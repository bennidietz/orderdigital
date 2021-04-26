import 'package:flutter/material.dart';

class ProfileApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfileAppState();
}

class ProfileAppState extends State<ProfileApp> {
  int _level = 0;

  incrementLevel() {
    setState(() {
      _level++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.grey[900],
            appBar: AppBar(
              title: Text("Ninja ID Card"),
              centerTitle: true,
              backgroundColor: Colors.grey[850],
              elevation: 0.0,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: incrementLevel,
            ),
            body: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: CircleAvatar(
                            backgroundImage: AssetImage("assets/thumb.jpeg"),
                            radius: 40.0),
                      ),
                      Divider(
                        height: 60.0,
                        color: Colors.grey[800],
                      ),
                      Text("NAME",
                          style: TextStyle(
                              color: Colors.grey, letterSpacing: 1.5)),
                      SizedBox(height: 10.0),
                      Text("Chun-Li",
                          style: TextStyle(
                              color: Colors.amberAccent[200],
                              letterSpacing: 2,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 30.0),
                      Text("CURRENT NINJA LEVEL",
                          style: TextStyle(
                              color: Colors.grey, letterSpacing: 1.5)),
                      SizedBox(height: 10.0),
                      Text(_level.toString(),
                          style: TextStyle(
                              color: Colors.amberAccent[200],
                              letterSpacing: 2,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 30.0),
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.grey[400],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "chu-li@ninja.co.uk",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 18.0,
                                letterSpacing: 1.0),
                          )
                        ],
                      )
                    ])));
  }
}
