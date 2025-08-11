import 'package:flutter/material.dart';
import 'package:task_manager/widgets/custom_floating_action_button_widget.dart';
import 'package:task_manager/widgets/task_stats_cards_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        scrolledUnderElevation: 0,
        title: Text(
          "TASK MANAGER",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ColoredBox(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TaskStatsCardsSection(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 5,
                    ),
                    child: Text(
                      "Pending Tasks",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                itemCount: 20,
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
                    "Task Title ${index + 1}",
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5,
                    children: [
                      IconButton(
                        tooltip: "Mark as Completed",
                        onPressed: () {},
                        icon: Icon(Icons.done, color: Colors.greenAccent),
                      ),
                      IconButton(
                        tooltip: "Delete Task",
                        onPressed: () {},
                        icon: Icon(Icons.close, color: Colors.redAccent),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButtonWidget(),
    );
  }
}
