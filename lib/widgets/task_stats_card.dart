import 'package:flutter/material.dart';

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
    return Container(
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
    );
  }
}
