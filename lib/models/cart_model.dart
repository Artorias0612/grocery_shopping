import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // Shop Items List

  final List _shopItem = [
    // [itemName, itemPrice, imagePath, color]
    ["Avocado", "4.00", "assets/images/avocado.png"],
    ["Banana", "5.00", "assets/images/banana.png"],
    ["Chicked", "30.00", "assets/images/chicken.png"],
    ["Water", "2.00", "assets/images/banana.png"],
  ];
}
