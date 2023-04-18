import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/models/register_model.dart';
import 'package:shopping_app/controllers/login_controller.dart';
import 'package:shopping_app/screens/landing_page.dart';

import '../services/netwoek_handler.dart';

class RegisterController extends GetxController{
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController fullNameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController mobileNumberTextController = TextEditingController();
  TextEditingController hintTextController = TextEditingController();
  RxString gender = "".obs;

  var loginController = Get.find<LoginController>();

  void register() async{
    RegisterModel registerModel = RegisterModel(
        mobileNo: loginController.loginEditingController.text,
        password: passwordTextController.text,
        gender: gender.value,
      mobileNumber:
        mobileNumberTextController.text,
      hint: hintTextController.text,
        fullName: fullNameTextController.text
    );

    var response = await NetworkHandler.post(registerModelToJson(registerModel), "login/register");
    print(response);
    var data = json.decode(response);
    await NetworkHandler.storeToken(data['token']);
    Get.offAll(LandingPage());
  }

}

