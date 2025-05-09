import 'package:flutter/material.dart';
import 'package:fooddelivery/model/resturant.dart';
import 'package:fooddelivery/views/payment_page.dart';
import 'package:fooddelivery/widgets/my_button.dart';
import 'package:fooddelivery/widgets/my_cart_tile.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(
      builder: (context, resturant, child) {
        final userCart = resturant.cart;
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            centerTitle: true,
            title: Text("Cart"),
            actions: [
              //clear the cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Are you sure you want to clear the cart?"),
                        actions: [
                          //cancle button
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Cancel"),
                          ),

                          //yes
                          TextButton(
                            onPressed: () {
                              resturant.clearCart();
                              Navigator.pop(context);
                            },
                            child: Text("Yes"),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.delete),
              ),
            ],
          ),

          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                          child: Center(child: Text("Your Cart is Empty")),
                        )
                        : Expanded(
                          child: ListView.builder(
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              final cartItem = userCart[index];
                              return MyCartTile(cartItem: cartItem);
                            },
                          ),
                        ),
                  ],
                ),
              ),

              MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PaymentPage();
                      },
                    ),
                  );
                },
                text: "Go To Checkout",
              ),

              SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
