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
    getProductDetails();
    super.onInit();

  }

 getProductDetails() async{
    isLoading(true);
      var response = await NetworkHandler.get("/product-details/getAll", "");
      // var data = jsonDecode(response);
      // print(data);
      ProductDetailsModel productDetailsModel = ProductDetailsModel.fromJson(jsonDecode(response));
      print(productDetailsModel.data);
      productList = productDetailsModel.data;
      isLoading(false);
  }

}