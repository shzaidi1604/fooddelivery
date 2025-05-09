//food items

class Food {

  String name;
  String description;
  String imagePath;
  double price;
  FoodCategory category;
  List<Addon> availableAddons;


Food({
  
  required this.name,
  required this.description,
  required this.imagePath,
  required this.price,
  required this.availableAddons,
  required this.category

  });

}

//food categories

enum FoodCategory{
  burgers,
  salads,
  sides,
  deserts,
  drinks
}


//food addons 

class Addon{
  String name;
  double price;

  Addon({
    required this.name,
    required this.price
    });
}