import 'package:flutter/foundation.dart';
class Task{
  const Task({@required this.title, this.subTaskList});

  final String title;
  final List subTaskList;

  static List<Task> loadTasks() {
    var allTasks = List<Task>();
    allTasks.add(Task(title: "Trip to Paris", subTaskList: ["Buy winter coats",
    "Go to the Louvre", "Visit the Eiffel Tower"]));
    allTasks.add(Task(title: "My Tasks", subTaskList: ["Go to Dr Nofong's office",
    "Finish this particular view"]));

    allTasks.add(Task(title: "Go visit Francine"));

    allTasks.add(Task(title: "Go Home for Easter"));

    allTasks.add(Task(title: "Write outline for Literature Review"));


    return allTasks;
  }
}