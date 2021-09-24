import 'package:flutter/material.dart';
import 'package:my_todoey/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) onChanged;
  final Function()? onLongPress;

  const TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.onChanged,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        fillColor: MaterialStateProperty.all<Color>(kColorPrimary!),
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
