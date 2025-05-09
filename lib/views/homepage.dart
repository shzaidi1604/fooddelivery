import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/model/food.dart';
import 'package:fooddelivery/model/resturant.dart';
import 'package:fooddelivery/views/food_main_screen.dart';
import 'package:fooddelivery/widgets/my_current_location.dart';
import 'package:fooddelivery/widgets/my_description_box.dart';
import 'package:fooddelivery/widgets/my_drawer.dart';
import 'package:fooddelivery/widgets/my_food_tile.dart';
import 'package:fooddelivery/widgets/my_sliver_app_bar.dart';
import 'package:fooddelivery/widgets/my_tab_bar.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: FoodCategory.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  //return list of food in given categories

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(0),
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return MyFoodTile(
            food: food,
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodMainScreen(food: food),
                  ),
                ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySliverAppBar(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    //current location
                    MyCurrentLocation(),
                    //description box
                    MyDescriptionBox(),
                  ],
                ),
                title: MyTabBar(tabController: _tabController),
              ),
            ],
        body: Consumer<Resturant>(
          builder:
              (context, resturant, child) => TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(resturant.menu),
              ),
        ),
      ),
    );
  }
}
