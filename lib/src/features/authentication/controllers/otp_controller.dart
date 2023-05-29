

import 'package:book_my_guide/src/features/core/screens/dashboard/dashboard.dart';
import 'package:get/get.dart';

import '../../../repository/authentication_repository/authenetication_repository.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async{
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
      isVerified ? Get.offAll(const Dashboard()) : Get.back();
  }

}