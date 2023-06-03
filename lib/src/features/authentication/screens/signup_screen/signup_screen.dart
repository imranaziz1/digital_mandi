import 'package:book_my_guide/src/common_widgets/form/form_header_widget.dart';
import 'package:book_my_guide/src/constants/image_string.dart';
import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:book_my_guide/src/features/authentication/screens/signup_screen/signup_form_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FormHeaderWidget(
                image: signupScreenimage,
                title: txtSignupTitle,
                subtitle: txtSignupSubtitle,
              ),
              const SignupFormWidget(),
              Column(
                children: [
                  const Text("OR"),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(googleLogo),
                        width: 20.0,
                      ),
                      label: Text(txtSigninWithGoogle.toUpperCase()),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: txtAlreadyHaveAccount,
                            style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: mySignup.toUpperCase()),
                      ])))
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
