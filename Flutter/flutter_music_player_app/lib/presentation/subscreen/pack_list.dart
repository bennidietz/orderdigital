import 'package:flutter/material.dart';
import 'package:flutter_music_player_app/network/model/checkbox_value.dart';
import 'package:flutter_music_player_app/presentation/widgets/checkbox.dart';
import 'package:flutter_music_player_app/presentation/widgets/dialogs/add_luggage_dialog.dart';
import 'package:flutter_music_player_app/presentation/widgets/icon_fab.dart';

import '../../network/constants.dart';

class PackListSubScreen extends StatefulWidget {
  PackListSubScreen({Key? key, this.title}) : super(key: key);


  final String? title;

  @override
  _PackListSubScreenState createState() => _PackListSubScreenState();
}

class _PackListSubScreenState extends State<PackListSubScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: defaultPadding,),
                ...PACKLIST_VALUES.map((value) =>
                    MyCheckBox(
                      text: value.text,
                      defaultState: value.done,
                    ),
                )
              ]
          ),
        ),
      floatingActionButton: IconFloatingActionButton(
        iconData: Icons.add,
        callback: () {
          showDialog(context: context, builder: (BuildContext context) {
            return AddLuggageDialog();
          });
        },
      ),
    );
  }
}