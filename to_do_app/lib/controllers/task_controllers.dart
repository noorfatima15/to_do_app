import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../models/task.dart';

class TaskController extends GetxController {
  RxList<Task> taskList = <Task>[].obs;
  RxString dropDownActivity = "Buisness".obs;
  var listOfActivities = <String>['Buisness', 'Plan', 'Activity3'];

  RxString userNAme = ''.obs;

  void addUser(String username) {
    userNAme = username.obs;
    update();
  }

  void selectActivity(String activity) {
    dropDownActivity.value = activity;
  }

  String activityImage(Task task) {
    switch (task.activity) {
      case 'Buisness':
        return 'https://thumbs.dreamstime.com/b/dollars-suitcase-business-icon-vector-sign-symbol-isolated-white-background-logo-concept-your-web-mobile-app-design-134169376.jpg';
      case 'Plan':
        return 'https://t3.ftcdn.net/jpg/03/25/95/40/360_F_325954032_NyePptbkaDbkB0CLr1G4B61Z1g6JCNOQ.jpg';
      case 'Activity3':
      default:
        return 'https://cdn.icon-icons.com/icons2/2474/PNG/512/ingenuity_wit_book_idea_light_bulb_learn_learning_icon_149691.png';
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
