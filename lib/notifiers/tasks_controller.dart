import 'package:flutter/foundation.dart';
import 'package:task_manager/models/task_model.dart';

class TasksController extends ChangeNotifier {
  final List<TaskModel> _pendingTasks = [];
  List<TaskModel> get pendingTasks => _pendingTasks;

  void addToPendingTasks(TaskModel taskmodel) {
    _pendingTasks.add(taskmodel);
    notifyListeners();
  }
}
