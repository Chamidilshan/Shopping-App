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
    var scopedToken = await NetworkHandler.getToken();
    if(scopedToken!=null){
      token?.value = scopedToken;
      loggedIn.value = true;
      var response = await NetworkHandler.get("user-details", scopedToken);
      print(response);
    }
  }
}