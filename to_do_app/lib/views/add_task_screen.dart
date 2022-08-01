import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:to_do_app/controllers/task_controllers.dart';
import 'package:to_do_app/models/task.dart';

class AddTask extends StatelessWidget {
  AddTask({Key? key}) : super(key: key);
  final TaskController taskController = Get.put(TaskController());
  String dropdownValue = 'Activity1';
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Container(
                  height: 600,
                  width: 300,
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(25, 50, 10, 33),
                    color: Colors.white38.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Add Your Todo Tasks Here',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 10),
                          const Center(
                            child: Text(
                              'Type Your Task Here',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                  fontSize: 30),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            // padding: EdgeInsets.all(5),
                            width: 280,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: titleController,
                                  onTap: () => titleController.clear(),
                                  onChanged: (value) {},
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    icon: Icon(Icons.note_add_outlined),
                                    hintText: 'Write Your Title Here',
                                    labelText: 'Title',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            // padding: EdgeInsets.all(5),
                            width: 280,
                            child: TextFormField(
                              onTap: () => subTitleController.clear(),
                              controller: subTitleController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                icon: Icon(Icons.bookmark_add_rounded),
                                hintText: 'Write Your SubTitle Here',
                                labelText: 'SubTitle',
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text('category'),
                          Theme(
                            data: Theme.of(context)
                                .copyWith(canvasColor: Colors.grey),
                            child: DropdownButton<String>(
                                dropdownColor: Colors.white,
                                elevation: 0,
                                menuMaxHeight: 120,
                                hint: Text('Choose Option'),
                                value: dropdownValue,
                                items: <String>[
                                  'Activity1',
                                  'Activity2',
                                  'Activity3'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                          color: Colors.black54,
                                          // backgroundColor: Colors.black54,
                                        ),
                                      ));
                                }).toList(),
                                onChanged: (String? newValue) {
                                  dropdownValue = newValue!;
                                }),
                          ),
                          SizedBox(height: 80),
                          ElevatedButton(
                            onPressed: () {
                              Task task = Task(
                                // activity: taskController.activityImage(),
                                activity: dropdownValue,
                                title: titleController.text,
                                subtitle: titleController.text,
                              );

                              taskController.taskList.add(task);

                              Get.back();
                            },
                            child: const Text('Done'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Go Back'))
            ],
          ),
        ),
      ),
    );
  }
}
