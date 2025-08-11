import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/models/task_model.dart';
import 'package:task_manager/notifiers/tasks_controller.dart';

class CustomFloatingActionButtonWidget extends StatefulWidget {
  const CustomFloatingActionButtonWidget({super.key});

  @override
  State<CustomFloatingActionButtonWidget> createState() =>
      _CustomFloatingActionButtonWidgetState();
}

class _CustomFloatingActionButtonWidgetState
    extends State<CustomFloatingActionButtonWidget> {
  late TextEditingController taskController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    taskController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Add New Task"),
            titleTextStyle: TextStyle(
              fontFamily: "Poppins",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            content: SizedBox(
              width: double.maxFinite,
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: taskController,
                  validator: (value) => value == null || value.trim().isEmpty
                      ? "This is required"
                      : null,
                  style: TextStyle(fontFamily: "Poppins"),
                  decoration: InputDecoration(
                    hintText: "Enter Task Name",
                    hintStyle: TextStyle(fontFamily: "Poppins"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("CANCEL"),
              ),
              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<TasksController>().addToPendingTasks(
                      TaskModel(
                        taskName: taskController.text.trim(),
                        isCompleted: false,
                      ),
                    );
                    Navigator.pop(context);
                    taskController.clear();
                  }
                },
                child: Text("OK"),
              ),
            ],
          ),
        );
      },
      child: Icon(Icons.add),
    );
  }
}
