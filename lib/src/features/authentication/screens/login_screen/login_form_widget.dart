import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:book_my_guide/src/features/authentication/screens/forget_password/forget_password_option/forget_password_model_bottom_sheet.dart';
import 'package:book_my_guide/src/features/core/screens/home_screen/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/screens/dashboard/admin_panel_test.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultSize),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: txtEmail,
                  hintText: txtEmail,
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: defaultFormSize - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: txtPassword,
                hintText: txtPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: null, icon: Icon(CupertinoIcons.eye_fill)),
              ),
            ),
            const SizedBox(
              height: defaultSize,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: const Text(txtForgetPassword)),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to( AdminPanelDashboard());
                    },
                    child: Text(myLogin.toUpperCase())))
          ],
        ),
      ),
    ));
  }
}