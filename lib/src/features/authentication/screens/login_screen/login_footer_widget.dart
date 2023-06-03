import 'package:book_my_guide/src/constants/image_string.dart';
import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:book_my_guide/src/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: defaultSize,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () => Get.to(const SignupScreen()),
            icon: const Image(
              image: AssetImage(googleLogo),
              width: 20.0,
            ),
            label: Text(txtSigninWithGoogle.toUpperCase()),
          ),
        ),
        const SizedBox(
          height: defaultSize,
        ),
        TextButton(
            onPressed: () {},
            child: Text.rich(TextSpan(
                text: txtAlreadyHaveAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(text: mySignup, style: TextStyle(color: Colors.blue))
                ])))
      ],
    );
  }
}
