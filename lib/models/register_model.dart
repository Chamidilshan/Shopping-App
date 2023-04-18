import 'package:flutter/material.dart';

// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  RegisterModel({
    required this.mobileNo,
    required this.password,
     this.fullName,
     this.email,
    required this.gender,
     this.mobileNumber,
     this.hint,
  });

  String mobileNo;
  String password;
  String? fullName;
  String? email;
  String gender;
  String? mobileNumber;
  String? hint;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
    mobileNo: json["mobileNo"],
    password: json["password"],
    fullName: json["fullName"],
    email: json["email"],
    gender: json["gender"],
    mobileNumber: json["mobileNumber"],
    hint: json["hint"],
  );

  Map<String, dynamic> toJson() => {
    "mobileNo": mobileNo,
    "password": password,
    "fullName": fullName,
    "email": email,
    "gender": gender,
    "mobileNumber": mobileNumber,
    "hint": hint,
  };
}
