import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:book_my_guide/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:book_my_guide/src/features/authentication/screens/forget_password/forget_password_option/forget_password_btn_widget.dart';
import 'package:book_my_guide/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        builder: (context) => Container(
              padding: const EdgeInsets.all(defaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txtForgetPasswordTitle,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Text(
                    txtForgetPasswordSubtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ForgetPasswordButtonWidget(
                      btnIcon: Icons.email_outlined,
                      title: txtEmail,
                      subtitle: txtResetViaEmail,
                      onTap: () {
                        Navigator.pop(context);
                        Get.to(() => const ForgetPasswordMail());
                      }),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ForgetPasswordButtonWidget(
                    btnIcon: Icons.mobile_friendly_outlined,
                    title: txtPhoneNo,
                    subtitle: txtResetViaPhone,
                    onTap: () {
                      Get.to(const OtpScreen());
                    },
                  )
                ],
              ),
            ));
  }
}
