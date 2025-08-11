import 'package:flutter/foundation.dart';
import 'package:task_manager/models/task_model.dart';

class TasksController extends ChangeNotifier {
  final List<TaskModel> _allTasks = [];
  List<TaskModel> get allTasks => _allTasks;

  void addToPendingTasks(TaskModel taskmodel) {
    _allTasks.add(taskmodel);
    notifyListeners();
  }

  void markasCompleted(TaskModel taskModel) {
    final index = _allTasks.indexOf(taskModel);
    _allTasks[index].isCompleted = true;
    notifyListeners();
  }

  void deleteTask(TaskModel taskModel) {
    _allTasks.remove(taskModel);
    notifyListeners();
  }
}
