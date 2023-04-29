import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/services/network_handler.dart';

class LandingPageController extends GetxController{

  RxString? token;
  RxBool loggedIn = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void checkLogin() async{
    var scopedtToken = await NetworkHandler.getToken();
    if(scopedtToken!=null){
      token?.value = scopedtToken;
      loggedIn.value = true;
      var response = await NetworkHandler.get("user-details", scopedtToken);
      print(response);
    }
  }
}