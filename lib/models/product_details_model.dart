import 'package:flutter/material.dart';

import 'dart:convert';

ProductDetailsModel productDetailsModelFromJson(String str) => ProductDetailsModel.fromJson(json.decode(str));

String productDetailsModelToJson(ProductDetailsModel data) => json.encode(data.toJson());

class ProductDetailsModel {

  ProductDetailsModel({
    required this.data,
  });

  List<ProductDetailItem> data;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) => ProductDetailsModel(
    data: List<ProductDetailItem>.from(json["data"].map((x) => ProductDetailItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class ProductDetailItem {
  String id;
  String name;
  String desc;
  String wishlisted;
  String acturalPrice;
  String discountedPrice;
  String discount;
  String category;
  String subCategory;
  String type;
  String genre;
  String brand;
  String imageUrl;
  String? rating;
  String? noOfReviews;

  ProductDetailItem({
    required this.id,
    required this.name,
    required this.desc,
    required this.wishlisted,
    required this.acturalPrice,
    required this.discountedPrice,
    required this.discount,
    required this.category,
    required this.subCategory,
    required this.type,
    required this.genre,
    required this.brand,
    required this.imageUrl,
    this.rating,
    this.noOfReviews,
  });

  factory ProductDetailItem.fromJson(Map<String, dynamic> json) => ProductDetailItem(
    id: json["_id"],
    name: json["name"],
    desc: json["desc"],
    wishlisted: json["wishlisted"],
    acturalPrice: json["actural_price"],
    discountedPrice: json["discounted_price"],
    discount: json["discount"],
    category: json["category"],
    subCategory: json["sub_category"],
    type: json["type"],
    genre: json["genre"],
    brand: json["brand"],
    imageUrl: json["image_url"],
    rating: json["rating"],
    noOfReviews: json["no_of_reviews"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "desc": desc,
    "wishlisted": wishlisted,
    "actural_price": acturalPrice,
    "discounted_price": discountedPrice,
    "discount": discount,
    "category": category,
    "sub_category": subCategory,
    "type": type,
    "genre": genre,
    "brand": brand,
    "image_url": imageUrl,
    "rating": rating,
    "no_of_reviews": noOfReviews,
  };
}
