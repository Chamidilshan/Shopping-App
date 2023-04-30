import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopping_app/controllers/product_details_controller.dart';
import 'package:shopping_app/screens/product_card_page.dart';

class Product extends StatelessWidget {

  var productDetailsController = Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: () {},),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Men Clothes",
              style: TextStyle(
              fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.black
            ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
                "2345 items",
              style: TextStyle(
                fontSize: 12.0,
                  color: Colors.grey,
                fontWeight: FontWeight.w300
              ),
            )
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: 26.0, color: Colors.black,)
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline, size: 26.0, color: Colors.black,)
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined, size: 26.0, color: Colors.black,)
          )
        ],
      ),
      body: Obx(() => productDetailsController.isLoading.value ?
      Center(child: CircularProgressIndicator(color: Colors.pinkAccent,)) : ListView.builder(
        itemCount: productDetailsController.productList.length,
        itemBuilder: (context, index) {
          return ProductCard();
        },
      ),)
    );
  }
}
