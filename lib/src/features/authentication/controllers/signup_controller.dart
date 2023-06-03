import 'package:book_my_guide/src/features/authentication/models/user_model.dart';
import 'package:book_my_guide/src/repository/authentication_repository/authenetication_repository.dart';
import 'package:book_my_guide/src/repository/user_repository/user_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/forget_password/forget_password_otp/otp_screen.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
      ));
    }
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    //phoneAuthentication(user.phoneNo);
    Get.to(() => const OtpScreen());
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}
