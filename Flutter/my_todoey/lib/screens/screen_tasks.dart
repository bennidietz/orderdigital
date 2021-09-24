import 'package:flutter/material.dart';
import 'package:my_todoey/constants.dart';
import 'package:my_todoey/screens/add_task_screen.dart';
import 'package:my_todoey/widgets/number_text.dart';
import 'package:my_todoey/widgets/tasks_list.dart';

class ScreenTasks extends StatefulWidget {
  const ScreenTasks({Key? key}) : super(key: key);

  @override
  State<ScreenTasks> createState() => _ScreenTasksState();
}

class _ScreenTasksState extends State<ScreenTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPrimary,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kColorPrimary,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => ScreenAddTask(),
          );
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 60.0,
                left: 30.0,
                right: 30.0,
                bottom: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 35.0,
                      color: kColorPrimary,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  NumberText(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
