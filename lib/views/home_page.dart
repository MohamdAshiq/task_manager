import 'package:flutter/material.dart';
import 'package:task_manager/widgets/task_stats_cards_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TASK MANAGER",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(children: [TaskStatsCardsSection()]),
    );
  }
}
