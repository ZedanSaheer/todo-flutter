import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isCheck;
  final String taskTitle;
  final void Function(bool?) checkbox;

  TaskTile({
    required this.isCheck,
    required this.taskTitle,
    required this.checkbox,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isCheck ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        onChanged: checkbox,
        value: isCheck,
      ),
    );
  }
}
