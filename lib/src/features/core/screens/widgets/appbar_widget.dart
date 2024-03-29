import 'package:book_my_guide/src/constants/color.dart';
import 'package:book_my_guide/src/constants/image_string.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:book_my_guide/src/features/core/screens/chat_ui/chat_page.dart';
import 'package:book_my_guide/src/features/core/screens/chat_ui/chat_screen.dart';
import 'package:book_my_guide/src/features/core/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:book_my_guide/src/repository/authentication_repository/authenetication_repository.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class dashboardAppbar extends StatelessWidget implements PreferredSizeWidget{
  const dashboardAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        appName,
          style: Theme.of(context).textTheme.headline5,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [

        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: myCardBgColor,
            ),
            child: IconButton(
                onPressed: () => Get.to(ProfileScreen()),
                icon: const Image(image: AssetImage(appUserImage)))),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
