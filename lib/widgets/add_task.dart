import 'package:flutter/material.dart';
import 'package:to_do_app/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTextTitle;

    return Container(
      color: Color(0xff757575),

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              "Add Task",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (newText){
                newTextTitle = newText;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 40,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.lightBlueAccent,
                onPressed: (){
                  Provider.of<TaskData>(context,listen: false,).addTask(newTextTitle);
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 80),
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
