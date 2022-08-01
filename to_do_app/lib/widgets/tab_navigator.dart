import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/views/calculator/calculator_screen.dart';
import 'package:to_do_app/views/calender/calender_screen.dart';
import 'package:to_do_app/views/stopwatch/stopwatch_screen.dart';
import 'package:to_do_app/views/todo_screen.dart';

import '../controllers/navigation_controller.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({Key? key}) : super(key: key);
  NavigationController navigationController =
      Get.put(NavigationController(), permanent: false);
  final screens = [
    TodoScreen(),
    CalenderScreen(),
    StopwatchScreen(),
    Calculatorscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: navigationController.tabIndex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (index) {
            navigationController.changeTabIndex(index);
          },
          currentIndex: navigationController.tabIndex.value,
          backgroundColor: Colors.black54.withOpacity((0.9)),
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black54.withOpacity((0.9)),
                label: '',
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 20,
                )),
            BottomNavigationBarItem(
                backgroundColor: Colors.grey.withOpacity((0.9)),
                label: '',
                icon: Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                  size: 20,
                )),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue.withOpacity((0.9)),
                label: '',
                icon: Icon(
                  Icons.timer,
                  color: Colors.white,
                  size: 20,
                )),
            BottomNavigationBarItem(
                backgroundColor: Colors.lightBlueAccent.withOpacity((0.9)),
                label: '',
                icon: Icon(
                  Icons.calculate_outlined,
                  color: Colors.white,
                  size: 20,
                )),
          ],
        ),
      ),
    );
  }
}
