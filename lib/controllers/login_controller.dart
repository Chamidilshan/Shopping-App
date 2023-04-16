import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:shopping_app/models/login_model.dart';
import 'package:shopping_app/services/netwoek_handler.dart';

import '../screens/register.dart';

class LoginController extends GetxController{
  TextEditingController loginEditingController = TextEditingController();
  void login() async{
    LoginModel loginModel = LoginModel(mobileNo: loginEditingController.text);
    var response = await NetworkHandler.post(loginModelToJson(loginModel), "login");
    var data = json.decode(response);
    if(data["msg"]=="register"){
      Get.to(Register());
    }
  }
}