import 'package:flutter/material.dart';
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
          TaskStatsCard(
            taskCount: 10,
            title: "All Tasks",
            titleColor: Colors.white,
          ),
          TaskStatsCard(
            taskCount: 20,
            title: "Completed",
            titleColor: Colors.greenAccent,
          ),
          TaskStatsCard(
            taskCount: 30,
            title: "Pending",
            titleColor: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
