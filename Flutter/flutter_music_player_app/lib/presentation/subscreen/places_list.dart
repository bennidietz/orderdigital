import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_player_app/network/constants.dart';
import 'package:flutter_music_player_app/presentation/widgets/dialogs/add_place_dialog.dart';
import 'package:flutter_music_player_app/presentation/widgets/horizontal_divider.dart';
import 'package:flutter_music_player_app/presentation/widgets/icon_fab.dart';
import 'package:flutter_music_player_app/presentation/widgets/list_element.dart';
import 'package:flutter_music_player_app/router/router_constants.dart';

class PlacesListSubScreen extends StatefulWidget {
  PlacesListSubScreen({Key? key, this.title}) : super(key: key);


  final String? title;

  @override
  _PlacesListSubScreenState createState() => _PlacesListSubScreenState();
}

class _PlacesListSubScreenState extends State<PlacesListSubScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: defaultPadding / 2,),
            ...places.map((myPlace) =>
              Column(
                children: [
                  SizedBox(height: defaultPadding / 2,),
                  MyPlaceListElement(
                    place: myPlace,
                    callback: () => Navigator.pushNamed(context, placeDetailRoute, arguments: myPlace),
                  ),
                  HorizontalDivider(),
                ],
              ),
            ),
          ]
        ),
      ),
      floatingActionButton: IconFloatingActionButton(
        iconData: Icons.add,
        callback: () {
          showDialog(context: context, builder: (BuildContext context) {
            return AddPlaceDialog();
          });
        },
      ),
    );
  }
}