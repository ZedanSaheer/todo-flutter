import 'package:flutter/material.dart';
import 'package:state_management/model/task.dart';
import 'package:state_management/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  late final List<Task> tasks;

  TasksList({required this.tasks});

  @override
   createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isCheck: widget.tasks[index].isDone,
            checkbox: (bool? state) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
