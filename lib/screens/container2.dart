import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class CustomContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(top: 40.0),
        child: Consumer<TaskData>(builder: (context, taskData, index) {
          return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return Card(
                margin: EdgeInsets.only(top: 10.0),
                elevation: 8,
                shadowColor: Colors.redAccent,
                child: ListTile(
                  onLongPress: () {
                    taskData.delet(task);
                  },
                  title: Text(
                    task.name,
                    style: TextStyle(
                        fontSize: 25.0,
                        letterSpacing: .5,
                        decorationColor: Colors.red,
                        decoration:
                            task.isDone ? TextDecoration.lineThrough : null,
                        color: Colors.black),
                  ),
                  trailing: Checkbox(
                    activeColor: Colors.redAccent,
                    value: task.isDone,
                    onChanged: (checkboxstate) {
                      taskData.updateTask(task);
                    },
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
