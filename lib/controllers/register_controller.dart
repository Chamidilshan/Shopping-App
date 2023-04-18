import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/models/register_model.dart';
import 'package:shopping_app/controllers/login_controller.dart';

class RegisterController extends GetxController{
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController fullNameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController mobileNumberTextController = TextEditingController();
  TextEditingController hintTextController = TextEditingController();
  RxString gender = "".obs;

  var loginController = Get.find<LoginController>();

  void register(){
    RegisterModel registerModel = RegisterModel(
        mobileNo: loginController.loginEditingController.text,
        password: passwordTextController.text,
        gender: gender.value,
      mobileNumber:
        mobileNumberTextController.text,
      hint: hintTextController.text,
        fullName: fullNameTextController.text
    );

  }

}

