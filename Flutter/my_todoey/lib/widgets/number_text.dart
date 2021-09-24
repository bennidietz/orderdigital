import 'package:flutter/material.dart';
import 'package:my_todoey/viewmodels/task_viewmodel.dart';
import 'package:provider/provider.dart';

class NumberText extends StatelessWidget {
  const NumberText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int items = Provider.of<TaskViewModel>(context).taskCount;
    return Text(
      items == 1 ? '$items Task' : '$items Tasks',
      style: TextStyle(color: Colors.white, fontSize: 18.0),
    );
  }
}
