import 'package:flutter/material.dart';
import 'package:fooddelivery/model/cart_item.dart';
import 'package:fooddelivery/model/resturant.dart';
import 'package:fooddelivery/widgets/my_quantity_selector.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(
      builder:
          (context, resturant, child) => Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          cartItem.food.imagePath,
                          height: 100,
                          width: 100,
                        ),
                      ),

                      SizedBox(width: 10),
                      //name and price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(cartItem.food.name),
                          Text(
                            "\$" + cartItem.food.price.toString(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      ),

                      Spacer(),

                      //increment or decrement
                      MyQuantitySelector(
                        food: cartItem.food,
                        qty: cartItem.quantity,
                        onIncrement: () {
                          resturant.addToCart(
                            cartItem.food,
                            cartItem.selectedAddons,
                          );
                        },
                        onDecrement: () {
                          resturant.removeFromCart(cartItem);
                        },
                      ),
                    ],
                  ),
                ),

                //addons
                SizedBox(
                  height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                  child: ListView(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    scrollDirection: Axis.horizontal,
                    children:
                        cartItem.selectedAddons
                            .map(
                              (addon) => Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: FilterChip(
                                  label: Row(
                                    children: [
                                      //addon name
                                      Text(addon.name),

                                      //addon price
                                      Text(
                                        " (\$" + addon.price.toString() + ")",
                                      ),
                                    ],
                                  ),
                                  onSelected: (value) {},
                                  shape: StadiumBorder(
                                    side: BorderSide(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  backgroundColor:
                                      Theme.of(context).colorScheme.secondary,
                                  labelStyle: TextStyle(
                                    color:
                                        Theme.of(
                                          context,
                                        ).colorScheme.inversePrimary,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
