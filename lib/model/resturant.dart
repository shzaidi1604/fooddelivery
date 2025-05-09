import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/model/cart_item.dart';
import 'package:fooddelivery/model/food.dart';

class Resturant extends ChangeNotifier {
  //list of food menu

  List<Food> _menu = [
    //burgers
    Food(
      name: "Cheese Burger",
      description:
          "Savor the flavors of tradition with every bite at our cozy, family-owned kitchen.Where great taste meets warm hospitality — your table is waiting!",
      imagePath: "assets/images/burgers/burger1.jpg",
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Cheese Burger",
      description: "Savor the flavors of tradition with every bite at our cozy, family-owned kitchen.Where great taste meets warm hospitality — your table is waiting!",
      imagePath: "assets/images/burgers/burger2.jpg",
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Cheese Burger",
      description: "Savor the flavors of tradition with every bite at our cozy, family-owned kitchen.Where great taste meets warm hospitality — your table is waiting!",
      imagePath: "assets/images/burgers/burger3.jpg",
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Cheese Burger",
      description: "Savor the flavors of tradition with every bite at our cozy, family-owned kitchen.Where great taste meets warm hospitality — your table is waiting!",
      imagePath: "assets/images/burgers/burger4.jpg",
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Cheese Burger",
      description: "Savor the flavors of tradition with every bite at our cozy, family-owned kitchen.Where great taste meets warm hospitality — your table is waiting!",
      imagePath: "assets/images/burgers/burger5.jpg",
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),

    //salads
    Food(
      name: "Russian Salad",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/salads/salads1.jpg",
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Russian Salad",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/salads/salads2.jpg",
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Russian Salad",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/salads/salads3.jpg",
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Russian Salad",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/salads/salads4.jpg",
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Russian Salad",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/salads/salads5.jpg",
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),

    //drinks
    Food(
      name: "Fresh Lime",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/drinks/drink1.jpg",
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Fresh Lime",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/drinks/drink2.jpg",
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Fresh Lime",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/drinks/drink3.jpg",
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Fresh Lime",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/drinks/drink4.jpg",
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Fresh Lime",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/drinks/drink5.jpg",
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),

    //desrts
    Food(
      name: "Pan Cake",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/deserts/dessert1.jpg",
      price: 250,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Pan Cake",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/deserts/dessert2.jpg",
      price: 250,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Pan Cake",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/deserts/dessert3.jpg",
      price: 250,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Pan Cake",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/deserts/dessert4.jpg",
      price: 250,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Pan Cake",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/deserts/dessert5.jpg",
      price: 250,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),

    //sides
    Food(
      name: "Mashed Potato",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/sides/side1.jpg",
      price: 250,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Mashed Potato",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/sides/side2.jpg",
      price: 250,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Mashed Potato",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/sides/side3.jpg",
      price: 250,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Mashed Potato",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/sides/side4.jpg",
      price: 250,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
    Food(
      name: "Mashed Potato",
      description: "Classic cheese burger with pickle sauce.",
      imagePath: "assets/images/sides/side5.jpg",
      price: 250,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Feta Cheese", price: 50),
        Addon(name: "Extra Patty", price: 50),
      ],
    ),
  ];

  /*
    Getters
    */

  List<Food> get menu => _menu;
  List <CartItem> get cart => _cart;

  /*
    Operations
  */
  // user cart
  List<CartItem> _cart = [];
  // add to cart

  void addToCart(Food food, List<Addon> selectedAddons){
    CartItem? cartItem = _cart.firstWhereOrNull((item){

      bool isSameFood = item.food == food;

      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if(cartItem != null){
      cartItem.quantity++;
    }
    else{
      _cart.add(CartItem(
        food: food, 
        selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  //remove from cart

  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex != 1){
      if (_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // total items in the cart

  int getTotalItemCount(){
    int totalItemCount = 0;

    for(CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }


  // total price of the cart

  double getTotalPrice(){
    double total = 0.0;

    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons){
      itemTotal += addon.price;
    }

    total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //clear cart
  
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  /*
    Helpers
  */

  //generate receipt

  // format double value into money

  //format list of addons into String summary
}
