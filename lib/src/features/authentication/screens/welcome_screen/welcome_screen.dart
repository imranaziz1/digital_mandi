import 'package:book_my_guide/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:book_my_guide/src/constants/color.dart';
import 'package:book_my_guide/src/constants/image_string.dart';
import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:book_my_guide/src/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? mySecondaryColor : myPrimaryColor,
        body: Stack(
          children: [
            // FadeAnimation( durationInMs: 1200,
            //   animate: AnimatePosition(
            //     topBefore: -100,
            //     topAfter: 0,
            //     bottomBefore: 0,
            //     bottomAfter: 0,
            //     leftAfter: 0,
            //     leftBefore: 0,
            //     rightAfter: 0,
            //     rightBefore: 0,
            //   ),
            //  child:
            Container(
              padding: const EdgeInsets.all(defaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Book",
                          style: TextStyle(
                            color: Colors.green,
                            decorationColor: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(width: 10,),
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 20.0,
                            color: Colors.teal,
                            fontWeight:FontWeight.bold,
                            decorationColor: Colors.white),
                      ),
                      SizedBox(width: 10,),
                      Text("Guide",
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        welcomeTitle,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(welcomeSubTitle,
                          style: Theme.of(context).textTheme.subtitle1),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () {
                                Get.to(() => const LoginScreen());
                              },
                              child: Text(myLogin.toUpperCase()))),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => const SignupScreen());
                              },
                              child: Text(
                                mySignup.toUpperCase(),
                              )))
                    ],
                  )
                ],
              ),
            ),
            //  ),
          ],
        ),
      ),
    );
  }
}
