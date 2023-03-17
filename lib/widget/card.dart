import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/ProductModels.dart';
import '../const/colors.dart';
import '../providers/product_provider.dart';

class ToDoItem extends StatefulWidget {
  final Product product;

  const ToDoItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<product_provider>(context);

    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.create),
            onPressed: () {
              // print('Clicked on delete icon');
            },
          ),
        ),
        title: Text(
          widget.product.productName!,
          style: const TextStyle(
            fontSize: 16,
            color: tdBlack,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              provider.deleteProduct(widget.product.productId!);
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
