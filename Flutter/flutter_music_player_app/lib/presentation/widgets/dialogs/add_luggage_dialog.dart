import 'package:flutter/material.dart';
import 'package:flutter_music_player_app/presentation/widgets/checkbox.dart';

import '../../../network/constants.dart';

class AddLuggageDialog extends StatelessWidget {
  const AddLuggageDialog({Key? key}) : super(key: key);

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
                    "Neues Gepäch",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: defaultPadding,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Gepäckstück",
                    ),
                  ),
                  SizedBox(height: defaultPadding,),
                  MyCheckBox(
                    text: "Schon eingepackt",
                  ),
                  SizedBox(height: defaultPadding * 1.5,),
                  ElevatedButton(
                      onPressed: () {
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
