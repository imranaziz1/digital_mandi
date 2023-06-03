import 'package:book_my_guide/src/common_widgets/form/form_header_widget.dart';
import 'package:book_my_guide/src/constants/image_string.dart';
import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:book_my_guide/src/features/authentication/screens/login_screen/login_footer_widget.dart';
import 'package:book_my_guide/src/features/authentication/screens/login_screen/login_form_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: defaultSize,
                ),
                FormHeaderWidget(
                  image: signupScreenimage,
                  title: txtSigninTitle,
                  subtitle: txtSigninSubTitle,
                ),
                SizedBox(
                  height: defaultSize - 10,
                ),
                LoginForm(),
                LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
