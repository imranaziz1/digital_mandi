import 'package:book_my_guide/src/common_widgets/form/form_header_widget.dart';
import 'package:book_my_guide/src/constants/image_string.dart';
import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ForgetPasswordMail extends StatelessWidget {
  const ForgetPasswordMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              children: [
                const SizedBox(
                  height: defaultSize * 4,
                ),
                const FormHeaderWidget(
                  image: appname,
                  title: txtForgetPassword,
                  subtitle: txtForgetPasswordSubtitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: defaultSize,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(txtEmail),
                          hintText: txtEmail,
                          prefixIcon: Icon(Icons.mail_outline_outlined)),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text(txtNextBtn)))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
