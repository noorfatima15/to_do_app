import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/controllers/task_controllers.dart';

class AddUser extends StatelessWidget {
  AddUser({Key? key}) : super(key: key);
  final TextEditingController userController = TextEditingController();
  final TaskController taskController = Get.put(TaskController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 150),
                Center(
                  child: Container(
                    height: 400,
                    width: 300,
                    decoration: BoxDecoration(
                      // color: Color.fromARGB(25, 50, 10, 33),
                      color: Colors.white38.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        Center(
                          child: Text(
                            'Create Your Account Here',
                            style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                color: Colors.white),
                          ),
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 80),
                            SizedBox(
                              // padding: EdgeInsets.all(5),
                              width: 280,
                              child: Column(
                                children: [
                                  TextFormField(
                                    onChanged: (value) {},
                                    controller: userController,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      icon: Icon(Icons.people),
                                      hintText: 'Write Your Name Here',
                                      labelText: 'Name',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(height: 100),
                            ElevatedButton(
                              onPressed: () {
                                taskController.addUser(userController.text);
                                print(taskController.userNAme);
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
      ),
    );
  }
}
