import 'package:book_my_guide/src/common_widgets/form/form_header_widget.dart';
import 'package:book_my_guide/src/constants/image_string.dart';
import 'package:book_my_guide/src/constants/sizes.dart';
import 'package:book_my_guide/src/constants/text_strings.dart';
import 'package:book_my_guide/src/features/authentication/controllers/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController());
    var otp;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(defaultSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FormHeaderWidget(
              image: shoppingMarket,
              title: txtOtpTitle,
              subtitle: txtOtpSubtitle,
          heightBetween: 30.0,
          textAlign: TextAlign.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          const SizedBox(
            height: 40.0,
          ),
          OtpTextField(
            numberOfFields: 6,
            fillColor: Colors.black.withOpacity(0.1),
            filled: true,
            keyboardType: TextInputType.phone,
            onSubmit: (code) {
              otp = code;
              OTPController.instance.verifyOTP(otp);
            //  print("OTP is => $code");
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {
              OTPController.instance.verifyOTP(otp);

            }, child: const Text(txtNextBtn)),
          )
        ],
      ),
    ));
  }
}
