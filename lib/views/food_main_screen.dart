import 'package:flutter/material.dart';
import 'package:fooddelivery/model/food.dart';
import 'package:fooddelivery/model/resturant.dart';
import 'package:fooddelivery/widgets/my_button.dart';
import 'package:provider/provider.dart';

class FoodMainScreen extends StatefulWidget {
  Food food;
  Map<Addon, bool> selectedAddons = {};

  FoodMainScreen({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodMainScreen> createState() => _FoodMainScreenState();
}

class _FoodMainScreenState extends State<FoodMainScreen> {

  //method add to cart

  void addToCart(Food food, Map<Addon, bool> selectedAddons){

    Navigator.pop(context);

    List<Addon> currentlySelectedAddons = [];

    for(Addon addon in widget.food.availableAddons){
      if(widget.selectedAddons[addon]==true){
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Resturant>().addToCart(food, currentlySelectedAddons);
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // scaffold UI
        Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                //image of food
                Image.asset(
                  widget.food.imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title
                      Text(
                        widget.food.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      SizedBox(height: 10),
                      //price
                      Text(
                        "\$" + widget.food.price.toString(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),

                      SizedBox(height: 10),

                      //description
                      Text(
                        widget.food.description,
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),

                      SizedBox(height: 10),
                      Divider(color: Theme.of(context).colorScheme.secondary),
                      SizedBox(height: 10),
                      //addons heading
                      Text(
                        "Add-ons",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),

                      SizedBox(height: 10),

                      //addons
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            Addon addon = widget.food.availableAddons[index];
                            return CheckboxListTile(
                              title: Text(
                                addon.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              subtitle: Text(
                                "\$" + addon.price.toString(),
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 15),
                      //add to cart button
                      MyButton(onTap: ()=> addToCart(widget.food, widget.selectedAddons), 
                      text: "Add To Cart"),

                      SizedBox(height: 25),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        //back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(left: 25, top: 15),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle
              ),
              child: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context)),
            ),
          ),
        ),
      ],
    );
  }
}
