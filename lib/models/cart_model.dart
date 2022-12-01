import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // Shop Items List

  final List _shopItem = [
    // [itemName, itemPrice, imagePath, color]
    ["Avocado", "4.00", "assets/images/avocado.png", Colors.green],
    ["Banana", "5.00", "assets/images/banana.png", Colors.yellow],
    ["Chicked", "30.00", "assets/images/chicken.png", Colors.brown],
    ["Water", "2.00", "assets/images/water.png", Colors.blue],
    ["Avocado", "4.00", "assets/images/avocado.png", Colors.green],
    ["Banana", "5.00", "assets/images/banana.png", Colors.yellow],
    ["Chicked", "30.00", "assets/images/chicken.png", Colors.brown],
    ["Water", "2.00", "assets/images/water.png", Colors.blue],
  ];

  get shopItems => _shopItem;
}
