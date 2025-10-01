import 'package:flutter/material.dart';

import 'model.dart';

class CartProvider extends ChangeNotifier{
  final List<Product> _cart = [];

  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

}