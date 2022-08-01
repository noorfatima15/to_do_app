import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/controllers/navigation_controller.dart';
import 'package:to_do_app/views/add_task_screen.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:to_do_app/widgets/task_list.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({Key? key}) : super(key: key);
  List<String> sliderImages = [
    'https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1-3000x2000.jpg',
    'https://static.photocdn.pt/images/articles/2019/02/07/Simple_Landscape_Photography_Tips_With_Tons_of_Impact-2.jpg',
    'https://learn.zoner.com/wp-content/uploads/2018/08/landscape-photography-at-every-hour-part-ii-photographing-landscapes-in-rain-or-shine.jpg',
    'https://assets.traveltriangle.com/blog/wp-content/uploads/2018/03/acj-2003-beautiful-landscapes-around-the-world.jpg',
    'https://cdn.hswstatic.com/gif/landscape-photography-1.jpg',
    'https://static.photocdn.pt/images/articles/2018/12/03/articles/2017_8/mountain-landscape-ponta-delgada-island-azores-picture-id944812540.jpg',
    'https://wallpaperaccess.com/full/94472.jpg',
  ];

  @override
  String getSystemTime() {
    var now = new DateTime.now();
    return new DateFormat("EEE d/M/y \n       H:m:s").format(now);
  }

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
              Container(
                height: 200,
                width: 350,
                child: CarouselSlider.builder(
                    itemCount: sliderImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final sliderImage = sliderImages[index];

                      return buildImage(sliderImage, index);
                    },
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(seconds: 2),
                        height: 400,
                        autoPlayInterval: Duration(seconds: 5),
                        reverse: true)),
              ),
              SizedBox(height: 10),
              Container(
                height: 480,
                width: 320,
                decoration:
                    BoxDecoration(color: Colors.white38.withOpacity(0.1)),
              ),
              List_view(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String sliderImage, int index) =>
      Stack(fit: StackFit.loose, children: [
        Container(
          height: 250,
          width: 330,
          margin: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.grey,
          child: Image.network(
            sliderImage,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            SizedBox(height: 30),
            Container(
              height: 60,
              width: 150,
              color: Colors.black45.withOpacity(0.3),
              child: Center(
                child: TimerBuilder.periodic(Duration(seconds: 1),
                    builder: (context) {
                  return Text(
                    "${getSystemTime()}",
                    style: TextStyle(
                      color: Color(0xff2d386b),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 50),
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(AddTask());
                    },
                    child: Text('Add Your Task Here')))
          ],
        )
      ]);
}
