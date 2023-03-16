// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    this.productId,
    this.productName,
    this.description,
  });

  int? productId;
  String? productName;
  String? description;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productId: json["productId"],
        productName: json["productName"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "productId": productId,
        "productName": productName,
        "description": description,
      };
}
