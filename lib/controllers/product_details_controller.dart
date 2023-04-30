import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/models/product_details_model.dart';
import 'package:shopping_app/services/network_handler.dart';

class ProductDetailsController extends GetxController{
  RxBool isLoading = false.obs;
  List<ProductDetailItem> productList = [];

  @override
  void onInit(){
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    try {
      var response = await NetworkHandler.get('product-details/getAll', "");
      var data = json.decode(response);
      print(data);
    } catch (error) {
      print('Error occurred: $error');
    }
  }

}