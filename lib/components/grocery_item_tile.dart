// ignore_for_file: prefer_typing_uninitialized_variables
// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  void Function()? onPressed;
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;

  GroceryItemTile({
    Key? key,
    required this.onPressed,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: color[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          // imagePath
          Image.asset(
            imagePath,
            height: 70,
          ),
          // itemName
          Text(itemName),

          // itemPrice

          const SizedBox(
            height: 30.0,
          ),

          MaterialButton(
            onPressed: onPressed,
            color: color,
            child: Text(
              "\$$itemPrice",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
