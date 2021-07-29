import 'package:flutter/material.dart';
import 'package:flutter_music_player_app/network/model/journey.dart';

import '../../../network/constants.dart';

class AddJourneyDialog extends StatelessWidget {
  AddJourneyDialog({Key? key, required this.callback}) : super(key: key);

  final Function callback;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Wrap(
          children: [
            Container(
              width: 300,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Neue Reise",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: defaultPadding,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Reiseort",
                    ),
                  ),
                  SizedBox(height: defaultPadding,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Beschreibung",
                    ),
                  ),
                  SizedBox(height: defaultPadding * 1.5,),
                  ElevatedButton(
                      onPressed: () {
                        journeyRef.add(
                          MyJourney(
                              title: "Martinique",
                              description: "Traumurlaub",
                              image_url: "https://image.geo.de/30151190/t/BR/v3/w1440/r0/-/martinique-red-nutzug-s-1599562321-jpg--86261-.jpg",
                              date: "28.11.2021",
                              latitude: 13.3,
                              longitude: 40.5
                          )
                        );
                        callback.call();
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                        child: Text(
                          "Hinzufügen",
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ],
        )
    );
  }
}
