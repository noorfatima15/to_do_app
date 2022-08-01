// import 'dart:async';
//
// import 'package:get/get.dart';
//
// class StopWatchController extends GetxController {
//   var seconds = 0.obs;
//   var minutes = 0.obs;
//   var hours = 0.obs;
//
//   var digitSeconds = '00'.obs;
//   var digitMinutes = '00'.obs;
//   var digitHours = '00'.obs;
//
//   Timer? timer;
//   var started = false.obs;
//
//   List laps = [];
//
//   void stopTimer() {
//     timer!.cancel();
//     started = false as RxBool;
//   }
//
//   void resetTimer() {
//     timer!.cancel();
//     seconds = 0.obs;
//     minutes = 0.obs;
//     hours = 0.obs;
//     digitSeconds = '00' as RxString;
//     digitMinutes = '00' as RxString;
//     digitHours = '00' as RxString;
//     started = false as RxBool;
//   }
//
//   void addLaps() {
//     String lap = '$digitHours, $digitMinutes,$digitSeconds';
//     laps.add(lap);
//   }
//
//   void startFunction() {
//     started = true as RxBool;
//     timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       int localSeconds = seconds.toInt() + 1;
//       int localMinutes = minutes.toInt();
//       int localHours = hours.toInt();
//
//       if (localSeconds > 59) {
//         if (localMinutes > 59) {
//           localHours++;
//           localMinutes = 0;
//         } else {
//           localMinutes++;
//           localSeconds = 0;
//         }
//       }
//       seconds = localSeconds as RxInt;
//       minutes = localMinutes as RxInt;
//       hours = localHours as RxInt;
//
//       digitSeconds = ((seconds >= 10) ? "$seconds" : "0$seconds") as RxString;
//       digitMinutes = ((minutes >= 10) ? "$minutes" : "0$minutes") as RxString;
//       digitHours = ((hours >= 10) ? "$hours" : "0$hours") as RxString;
//     });
//   }
// }
