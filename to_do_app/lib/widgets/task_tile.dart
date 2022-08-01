import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:to_do_app/controllers/task_controllers.dart';

import '../models/task.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.index,
    required this.task,
  });
  final TaskController taskController = Get.put(TaskController());
  final String title;
  final String subtitle;
  final int index;
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 100,
            width: 355,
            decoration: BoxDecoration(
              // color: Colors.red,
              border: Border.all(color: Colors.black12),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 20,
                      alignment: Alignment.center,
                      child: Image(
                        image: NetworkImage(taskController.activityImage(task)),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Center(
                          child: Container(
                              width: 220,
                              child: Text(
                                title,
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green),
                              )),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          width: 220,
                          child: Text(
                            subtitle,
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Container(
                      alignment: Alignment.center,
                      child: IconButton(
                        onPressed: () {
                          taskController.deleteTask(index);
                        },
                        icon: const Icon(
                          Icons.delete_outline,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
