import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/controllers/task_controllers.dart';
import 'package:to_do_app/widgets/task_tile.dart';

import '../models/task.dart';

class List_view extends StatelessWidget {
  // const List_view({Key? key}) : super(key: key);
  TaskController taskController = Get.put(TaskController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: taskController.taskList.length,
              itemBuilder: (context, index) {
                Task task = taskController.taskList[index];

                return TaskTile(
                  subtitle: task.title,
                  title: task.subtitle,
                  index: index,
                  task: task,
                );
              },
            )),
      ],
    );
  }
}
