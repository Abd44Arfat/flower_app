import 'package:flower_app/model/item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectedproduct = [];
  double price = 0;
  add(Item product) {
    selectedproduct.add(product);
    price += product.price.round();
    notifyListeners();
  }

  delete(Item product) {
    selectedproduct.remove(product);
    price -= product.price.round();
    notifyListeners();
  }
}
