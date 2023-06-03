import 'package:book_my_guide/src/constants/color.dart';
import 'package:book_my_guide/src/constants/image_string.dart';
import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_rounded)),
        title: Text(
          txtProfile,
          style: Theme.of(context).textTheme.headline4,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon:
                  Icon(isDark ? Icons.sunny : Icons.nightlight_round_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage(profilePhoto)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: myPrimaryColor),
                      child: Icon(
                        Icons.mode_edit,
                        size: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                txtProfileHeading,
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                txtProfileSubHeading,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: myPrimaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: const Text(txtEditProfile,
                      style: TextStyle(color: appDarkColor)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),

              //MENU
              ProfileMenuWidget(
                title: 'Settings',
                icon: Icons.settings,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: 'User Management',
                icon: Icons.wallet,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: 'Billing Details',
                icon: Icons.verified_user_outlined,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: 'Logout',
                icon: Icons.follow_the_signs_outlined,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {},
              ),

              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              ProfileMenuWidget(
                title: 'Information',
                icon: Icons.info,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: 'Delete Account',
                icon: Icons.cancel_outlined,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor = isDark ? myPrimaryColor : myAccentColor;

    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: iconColor.withOpacity(0.1),
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge?.apply(color: textColor),
      ),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: iconColor.withOpacity(0.1),
              ),
              child: Icon(
                Icons.chevron_right_sharp,
                size: 18.0,
                color: iconColor,
              ),
            )
          : null,
    );
  }
}
