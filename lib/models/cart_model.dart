import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // Shop Items List

  final List _shopItem = [
    // [itemName, itemPrice, imagePath, color]
    ["Avocado", "4.00", "assets/images/avocado.png", Colors.green],
    ["Banana", "5.00", "assets/images/banana.png", Colors.yellow],
    ["Chicken", "30.00", "assets/images/chicken.png", Colors.brown],
    ["Water", "2.00", "assets/images/water.png", Colors.blue],
    ["Avocado", "4.00", "assets/images/avocado.png", Colors.green],
    ["Banana", "5.00", "assets/images/banana.png", Colors.yellow],
    ["Chicken", "30.00", "assets/images/chicken.png", Colors.brown],
    ["Water", "2.00", "assets/images/water.png", Colors.blue],
  ];

  // list of cart items

  final List _cartItems = [];

  get shopItems => _shopItem;
  get cartItems => _cartItems;

  // add item to the cart

  void addItemToCart(int index) {
    _cartItems.add(_shopItem[index]);
    notifyListeners();
  }

  // remove item from cart

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
  // calculate total price

  String calculateTotalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }

    return totalPrice.toStringAsFixed(2);
  }
}
