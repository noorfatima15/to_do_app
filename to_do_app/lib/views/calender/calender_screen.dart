import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({Key? key}) : super(key: key);

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
              SizedBox(height: 20),
              Text(
                'Calender',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: SfCalendar(
                  view: CalendarView.month,
                  initialSelectedDate: DateTime.now(),
                  cellBorderColor: Colors.black12,
                  appointmentTextStyle: TextStyle(color: Colors.white),
                  viewHeaderStyle: ViewHeaderStyle(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      dateTextStyle: TextStyle(color: Colors.white)),
                  blackoutDatesTextStyle: TextStyle(),
                  backgroundColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
