import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a list item one',
        style: TextStyle(
            decoration:
                isCheck ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        onChanged: ((value) => setState(() {
              isCheck = !isCheck;
            })),
        value: isCheck,
      ),
    );
  }
}
