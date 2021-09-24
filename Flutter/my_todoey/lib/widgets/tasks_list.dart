import 'package:flutter/material.dart';
import 'package:my_todoey/viewmodels/task_viewmodel.dart';
import 'package:my_todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskViewModel>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            var task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              onChanged: (_) => taskData.toggelTask(task),
              onLongPress: () => taskData.deleteTask(task),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
