import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/notifiers/tasks_controller.dart';
import 'package:task_manager/views/task_details_screen.dart';

class TaskStatsCard extends StatelessWidget {
  const TaskStatsCard({
    super.key,
    required this.title,
    required this.titleColor,
    required this.taskCount,
  });

  final int taskCount;
  final String title;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TaskDetailsScreen(
            title: title,
            tasks: title == "All Tasks"
                ? context.read<TasksController>().allTasks
                : context
                      .read<TasksController>()
                      .allTasks
                      .where(
                        (element) => title == "Completed"
                            ? element.isCompleted
                            : !element.isCompleted,
                      )
                      .toList(),
          ),
        ),
      ),
      child: Container(
        height: 100,
        width: 110,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 40, 40, 40),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Text(
              taskCount.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
            Text(
              title.toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                color: titleColor,
                letterSpacing: 1,
              ),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
