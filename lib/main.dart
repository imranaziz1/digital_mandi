
import 'package:book_my_guide/firebase_options.dart';
import 'package:book_my_guide/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:book_my_guide/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:book_my_guide/src/repository/authentication_repository/authenetication_repository.dart';
import 'package:book_my_guide/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}


   class MyApp extends StatelessWidget {
     const MyApp({Key? key}) : super(key: key);

     @override
     Widget build(BuildContext context) {
       return GetMaterialApp(
         theme: customAppTheme.lightTheme,
         darkTheme: customAppTheme.darkTheme,
       themeMode: ThemeMode.system,
         debugShowCheckedModeBanner: false,
         defaultTransition: Transition.leftToRightWithFade,
         transitionDuration: const Duration(milliseconds: 500),
         home: WelcomeScreen(),
       );
     }
   }


