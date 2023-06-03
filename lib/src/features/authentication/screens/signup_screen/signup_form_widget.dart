import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:book_my_guide/src/features/authentication/controllers/signup_controller.dart';
import 'package:book_my_guide/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: defaultFormSize - 10),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: controller.fullName,
            decoration: const InputDecoration(
                label: Text(txtFullName),
                prefixIcon: Icon(Icons.person_outline)),
          ),
          const SizedBox(
            height: defaultSize - 10,
          ),
          TextFormField(
            controller: controller.email,
            decoration: const InputDecoration(
                label: Text(txtEmail),
                prefixIcon: Icon(Icons.mail_outline_outlined)),
          ),
          const SizedBox(
            height: defaultSize - 10,
          ),
          TextFormField(
            controller: controller.phoneNo,
            decoration: const InputDecoration(
                label: Text(txtPhoneNo), prefixIcon: Icon(Icons.phone)),
          ),
          const SizedBox(
            height: defaultSize - 10,
          ),
          TextFormField(
            controller: controller.password,
            decoration: const InputDecoration(
                label: Text(txtPassword),
                prefixIcon: Icon(Icons.fingerprint_outlined)),
          ),
          const SizedBox(
            height: defaultSize,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      //   final user = UserModel(
                      //       fullName: controller.fullName.text.trim(),
                      //       email: controller.email.text.trim(),
                      //       phoneNo: controller.phoneNo.text.trim(),
                      //       password: controller.password.text.trim(),
                      // );
                      // SignupController.instance.createUser(user);

                      SignupController.instance
                          .phoneAuthentication(controller.phoneNo.text.trim());
                      Get.to(() => const OtpScreen());
                    }
                  },
                  child: Text(mySignup.toUpperCase()))),
        ],
      )),
    );
  }
}
