import 'package:flutter/material.dart';
import 'package:task_manager/models/task_model.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({
    super.key,
    required this.title,
    required this.tasks,
  });

  final String title;
  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(fontFamily: "Poppins")),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: tasks.isNotEmpty
          ? ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 10),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              itemCount: tasks.length,
              itemBuilder: (context, index) => ListTile(
                minTileHeight: 70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 15),
                tileColor: const Color.fromARGB(255, 27, 27, 27),
                leading: Text(
                  "${index + 1}",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                title: Text(
                  tasks[index].taskName,
                  style: TextStyle(fontFamily: "Poppins"),
                ),
              ),
            )
          : Center(
              child: Text(
                "No Tasks",
                style: TextStyle(fontFamily: "Poppins", fontSize: 17),
              ),
            ),
    );
  }
}
