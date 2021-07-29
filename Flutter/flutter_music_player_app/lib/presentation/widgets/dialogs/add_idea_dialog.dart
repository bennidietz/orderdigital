import 'package:flutter/material.dart';

import '../../../network/constants.dart';

class AddIdeaDialog extends StatelessWidget {
  const AddIdeaDialog({Key? key}) : super(key: key);

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
                    "Neue Idee",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: defaultPadding,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Ideenbeschreibung",
                    ),
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
