import 'package:digital_mandi/src/home_dir/home_screen.dart';
import 'package:digital_mandi/src/splash_screen/splash_screen.dart';
import 'package:digital_mandi/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
   class MyApp extends StatelessWidget {
     const MyApp({Key? key}) : super(key: key);

     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         theme: customAppTheme.lightTheme,
         darkTheme: customAppTheme.dartTheme,
       themeMode: ThemeMode.system,home: HomeScreen(),
       );
     }
   }


