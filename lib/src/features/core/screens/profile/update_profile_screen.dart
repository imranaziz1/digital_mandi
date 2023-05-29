import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery
        .of(context)
        .platformBrightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios_rounded)),
          title: Text(
            txtEditProfile,
            style: Theme
                .of(context)
                .textTheme
                .headline4,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon:
                Icon(isDark ? Icons.sunny : Icons.nightlight_round_outlined))
          ],
        ),
        body: SingleChildScrollView(
        child: Container(),
        ),
      );
    }
  }
