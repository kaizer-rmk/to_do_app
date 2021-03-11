import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_tile.dart';
import 'package:to_do_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallBack: (bool checkboxState){
                taskData.updateTask(taskData.tasks[index]);
              },
              longPressCallBack: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}


