


import 'package:book_my_guide/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:book_my_guide/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:book_my_guide/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:book_my_guide/src/constants/image_string.dart';
import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);

  // bool animate = false;
  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(defaultSize),
        child: Stack(

          children: [
            FadeAnimation(durationInMs: 1600,
                animate: AnimatePosition(
                  topAfter: 180, topBefore: -180, leftAfter: 0, leftBefore: 0,
                ),
                child: const Image(image: AssetImage(spImage1))),
            FadeAnimation(durationInMs: 1600,
                animate: AnimatePosition(bottomAfter: 180,bottomBefore: -180,leftBefore: 100,leftAfter: 0),
              child:
                      const Text(
                      appName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
          ],
        ),
      ),
    );

  }
}
