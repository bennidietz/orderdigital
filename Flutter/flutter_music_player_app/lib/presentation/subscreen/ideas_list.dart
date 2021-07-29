import 'package:flutter/material.dart';
import 'package:flutter_music_player_app/network/model/checkbox_value.dart';
import 'package:flutter_music_player_app/network/model/journey.dart';
import 'package:flutter_music_player_app/presentation/widgets/checkbox.dart';
import 'package:flutter_music_player_app/presentation/widgets/dialogs/add_idea_dialog.dart';
import 'package:flutter_music_player_app/presentation/widgets/icon_fab.dart';

import '../../network/constants.dart';

class IdeasSubScreen extends StatefulWidget {
  IdeasSubScreen({Key? key, this.title, this.myJourney}) : super(key: key);

  final MyJourney? myJourney;

  final String? title;

  @override
  _IdeasSubScreenState createState() => _IdeasSubScreenState();
}

class _IdeasSubScreenState extends State<IdeasSubScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: defaultPadding,),
                ...IDEAS_VALUES.map((idea) =>
                    MyCheckBox(
                      text: idea.text,
                      defaultState: idea.done,
                    ),
                ),
              ]
          ),
        ),
      floatingActionButton: IconFloatingActionButton(
        iconData: Icons.add,
        callback: () {
          showDialog(context: context, builder: (BuildContext context) {
            return AddIdeaDialog();
          });
        },
      ),
    );
  }
}