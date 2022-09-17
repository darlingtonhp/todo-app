import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle = 'blue';
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(
          20.0,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(
              style:
                  TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
