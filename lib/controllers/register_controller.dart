import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController fullNameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController mobileNumberTextController = TextEditingController();
  TextEditingController hintTextController = TextEditingController();
  RxString gender = "".obs;
}