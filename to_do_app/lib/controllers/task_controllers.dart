import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../models/task.dart';

class TaskController extends GetxController {
  RxList<Task> taskList = <Task>[].obs;
  RxString dropDownActivity = "Activity1".obs;
  var listOfActivities = <String>['Activity1', 'Activity2', 'Activity3'];

  void selectActivity(String activity) {
    dropDownActivity.value = activity;
  }

  String activityImage(Task task) {
    switch (task.activity) {
      case 'Activity1':
        return 'https://icons.veryicon.com/png/o/education-technology/passenger-flow-analysis-icon-library/activity-assessment.png';
      case 'Activity2':
        return 'https://www.pngitem.com/pimgs/m/666-6669907_social-activity-activities-icon-png-download-social-activities.png';
      case 'Activity3':
      default:
        return '';
    }
  }

  addTask(
    String tile_title,
    String selectedActivity,
    String tile_subtitle,
  ) {
    Task tasklists = Task(
      activity: selectedActivity,
      title: tile_title,
      subtitle: tile_subtitle,
    );

    taskList.add(tasklists);
  }

  void deleteTask(int index) {
    taskList.removeAt(index);
    // taskList.removeAt();
  }
}
