import 'package:flutter/material.dart';
import 'package:fooddelivery/model/resturant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          children: [
            Text("Thankyou For Your Order"),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Consumer<Resturant>(
                builder:
                    (context, resturant, child) =>
                        Text(resturant.displayCartReceipt()),
              ),
            ),
            SizedBox(height: 25),
            Text("Estimated Delivery Time is 4:20 PM"),
          ],
        ),
      ),
    );
  }
}
