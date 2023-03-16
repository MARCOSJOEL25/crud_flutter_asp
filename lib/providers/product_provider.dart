import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/ProductModels.dart';

class product_provider extends ChangeNotifier {
  List<Product> listproduct = [];

  product_provider() {
    _getList();
    _createOrUpdateProduct();
  }

  //Read
  _getList() async {
    var url = Uri.https('192.168.100.221:7248', 'api/Product');
    var response = await http.get(url);
    listproduct = productFromJson(response.body);
    notifyListeners();
  }

  //Create
  _createOrUpdateProduct() async {
    // final Map<String, dynamic> productoPost = {
    //   'productId': 0,
    //   'productName': 'Agregado desde providers',
    //   'description': 'oite palomo'
    // };

    // final http.Response response =
    //     await http.post(Uri.encodeFull(url), body: activityData);
    var url = Uri.https(
      '192.168.100.221:7248',
      'api/Product',
    );
    // print(json.encode(productoPost));
    var response = await http.post(url,
        body: json.encode({
          'productId': 0,
          'productName': 'Agregado desde providers',
          'description': 'oite palomo'
        }));
    print("pero bien ${response.body}");
    notifyListeners();
  }
}
