import 'package:book_my_guide/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:book_my_guide/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FadeAnimation extends StatelessWidget {
  FadeAnimation({
    Key? key,
    required this.durationInMs,
    this.animate,
    required this.child,
  }) : super(key: key);

  final controller = Get.put(FadeAnimationController());
  final int durationInMs;
  final AnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animate!.topAfter: animate!.topBefore,
        bottom: controller.animate.value ? animate!.bottomAfter: animate!.bottomBefore,
        right: controller.animate.value ? animate!.rightAfter: animate!.rightBefore,
        left: controller.animate.value ? animate!.leftAfter: animate!.leftBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animate.value ? 1:0,
          child: child,
          // child: Image(
          //   image: AssetImage("assets/images/team.png"),
          // ),
        )),
    );
  }
}