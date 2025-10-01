import 'package:flutter/material.dart';
import 'package:notes_app/task2/model.dart';
import 'package:provider/provider.dart';

import 'cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            Provider.of<CartProvider>(context, listen: false).addToCart(Product);
          },
          child: Text("Add to Cart"),
        )
        ,
      )
    );
  }
}
