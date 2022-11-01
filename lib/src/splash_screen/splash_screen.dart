


import 'package:digital_mandi/splash_screen_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/image_string.dart';
import '../home_dir/home_screen.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);
final splashController = Get.put(SplashScreenControllers());
  // bool animate = false;
  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Stack(
        children: [
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 180: -180,
                left: splashController.animate.value ? 0: -30,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1:0,
                  child: Image(
                    image: AssetImage(spImage1),
                  ),
                )),
          ),
    Obx(() => AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 180: -180,
              right: splashController.animate.value ? 0: -30,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1: 0,
                  child: Text(
                    "Digital Peoples Make things easier",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
          ),
    ),
        ],
      ),
    );
  }
}
