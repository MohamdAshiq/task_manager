import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/notifiers/tasks_controller.dart';
import 'package:task_manager/widgets/task_stats_card.dart';

class TaskStatsCardsSection extends StatelessWidget {
  const TaskStatsCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Selector<TasksController, int>(
            selector: (p0, p1) => p1.allTasks.length,
            builder: (context, value, child) => TaskStatsCard(
              taskCount: value,
              title: "All Tasks",
              titleColor: Colors.white,
            ),
          ),
          Selector<TasksController, int>(
            selector: (p0, p1) => p1.allTasks
                .where((element) => element.isCompleted == true)
                .toList()
                .length,
            builder: (context, value, child) => TaskStatsCard(
              taskCount: value,
              title: "Completed",
              titleColor: Colors.greenAccent,
            ),
          ),
          Selector<TasksController, int>(
            selector: (p0, p1) => p1.allTasks
                .where((element) => element.isCompleted == false)
                .toList()
                .length,
            builder: (context, value, child) => TaskStatsCard(
              taskCount: value,
              title: "Pending",
              titleColor: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
