import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/notifiers/tasks_controller.dart';
import 'package:task_manager/views/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TasksController(),
      child: MaterialApp(
        title: "Task Manager",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomePage(),
      ),
    );
  }
}
