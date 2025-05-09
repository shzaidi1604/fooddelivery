import 'package:flutter/material.dart';
import 'package:fooddelivery/model/cart_item.dart';
import 'package:fooddelivery/model/food.dart';

class MyQuantitySelector extends StatelessWidget {
  final int qty;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  MyQuantitySelector({
    super.key,
    required this.food,
    required this.qty,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50)),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          //decrease
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          //qty count
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 20,
              child: Center(child: Text(qty.toString()))),
          ),

          //increase
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

        ],
      ),
    );
  }
}
