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
        SizedBox(height: 5),
        Container(
          width: 310,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black12),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.2),

                offset: const Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 100,
                      width: 30,
                      alignment: Alignment.center,
                      child: Image(
                        image: NetworkImage(taskController.activityImage(task)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    children: [
                      Center(
                        child: Container(
                            width: 230,
                            child: Text(
                              title,
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45),
                            )),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: 230,
                        child: Text(
                          subtitle,
                          style: const TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 20,
                    alignment: Alignment.topRight,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          taskController.deleteTask(index);
                        },
                        icon: const Icon(
                          Icons.delete_outline,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
