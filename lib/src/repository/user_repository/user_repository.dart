import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../features/authentication/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository instance = Get.find();


  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async{
   await _db.collection("Users").add(user.toJson())
        .whenComplete(() =>
        Get.snackbar("Sucess", "Your account have been created",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green),
    )
        .catchError((error, stackTrace){
      Get.snackbar("Error", "Something went wrong. Try again",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      print(error.toString());

    });
  }


}