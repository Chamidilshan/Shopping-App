import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:shopping_app/models/login_model.dart';
import 'package:shopping_app/screens/landing_page.dart';
import 'package:shopping_app/services/network_handler.dart';

import '../screens/register.dart';

class LoginController extends GetxController{
  TextEditingController loginEditingController = TextEditingController();
  void login() async{
    LoginModel loginModel = LoginModel(mobileNo: loginEditingController.text);
    var response = await NetworkHandler.post(loginModelToJson(loginModel), "login");
    var data = json.decode(response);
    print(data);
    if(data["msg"]=="register"){
      Get.to(Register());
    }else{
      await NetworkHandler.storeToken(data["token"]);
      Get.offAll(LandingPage());
    }
  }
}