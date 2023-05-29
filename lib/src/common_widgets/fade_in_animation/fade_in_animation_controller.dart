
import 'package:book_my_guide/src/features/authentication/screens/home_dir/home_screen.dart';
import 'package:book_my_guide/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:book_my_guide/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:get/get.dart';

class FadeAnimationController extends GetxController {
  static FadeAnimationController get find => Get.find();
  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    animate.value = false;
   await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll( WelcomeScreen());
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
  }
}
