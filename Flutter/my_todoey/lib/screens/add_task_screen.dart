import 'package:flutter/material.dart';
import 'package:my_todoey/constants.dart';
import 'package:my_todoey/viewmodels/task_viewmodel.dart';
import 'package:provider/provider.dart';

class ScreenAddTask extends StatelessWidget {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Add task',
              style: TextStyle(
                fontSize: 24.0,
                color: kColorPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                autofocus: true,
                style: TextStyle(
                  fontSize: 18.0,
                ),
                onChanged: (String value) => text = value,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 100.0,
              height: 40.0,
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<TaskViewModel>(
                    context,
                    listen: false,
                  ).addTask(text);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kColorPrimary!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
