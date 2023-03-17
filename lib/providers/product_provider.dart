import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/ProductModels.dart';

class product_provider extends ChangeNotifier {
  List<Product> listproduct = [];

  product_provider() {
    getList();
    CreateOrProduct();
  }

  //Read
  getList() async {
    var url = Uri.https('192.168.100.221:7248', 'api/Product');
    var response = await http.get(url);
    listproduct = productFromJson(response.body);
    notifyListeners();
  }

  deleteProduct(int id) async {
    var url = Uri.https('192.168.100.221:7248', 'api/Product/$id');
    // print(json.encode(productoPost));
    var response = await http.delete(url);
    print("Delete ${response.body}");
    getList();
    notifyListeners();
  }

  CreateOrProduct() async {
    var headers = {'Content-Type': 'application/json'};

    var request = http.Request(
        'POST', Uri.parse('https://192.168.100.221:7248/api/Product'));
    request.body = json.encode({
      "productId": 16,
      "productName": "desde postman",
      "description": "string"
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
