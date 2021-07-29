import 'package:flutter/material.dart';
import 'package:flutter_music_player_app/network/constants.dart';
import 'package:flutter_music_player_app/presentation/widgets/list_element.dart';
import 'package:flutter_music_player_app/router/router_constants.dart';

class DreamTravelsScreen extends StatefulWidget {
  DreamTravelsScreen({Key? key, this.title}) : super(key: key);


  final String? title;

  @override
  _DreamTravelsScreenState createState() => _DreamTravelsScreenState();
}

class _DreamTravelsScreenState extends State<DreamTravelsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: defaultPadding,),
            ...dreams.map((journey) =>
            ListElement(
              title: journey.title,
              description: (journey.date != null) ? journey.date! : journey.description,
              image_url: journey.image_url,
              callback: () => Navigator.pushNamed(context, destinationDetailRoute, arguments: journey),
              )
            ),
          ],
        ),
      ),
    );
  }
}