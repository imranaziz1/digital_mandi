

import 'package:digital_mandi/src/home_dir/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenControllers extends GetxController {
  static SplashScreenControllers get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(microseconds: 5000));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 500));
    Get.to(HomeScreen());
    //Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen())));
  }

}
