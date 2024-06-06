
import 'package:app/pages/food_categories/choose_dinner.dart';
import 'package:app/pages/food_categories/decoration.dart';
import 'package:app/pages/food_categories/pages_recipes/make_pages_dinner.dart';

import 'package:app/static_components/appbar.dart';
import 'package:app/pages/food_categories/categories_recipes.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Dinner extends StatelessWidget {
  const Dinner({super.key});

  //name of each category in the tab bar
  List<Tab> _buildCategoryTabs(){
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.categoryName,
      );
    }).toList();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFood(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
          itemCount: categoryMenu.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final food = categoryMenu[index];
            return FoodDecor(
              food: food,
              onTap: () => navigateToRecipe(context, food),);
          });
    }).toList();
  }

  void navigateToRecipe(BuildContext context, Food food) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => MakePagesDinner(food: food),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: OrdinaryAppBar(titleOfPage: "Перекусы"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 80,
              child: TabBar(
                  isScrollable: true,
                  tabs: _buildCategoryTabs()
              ),
            ),
            Expanded(
              child: Consumer<ChooseDinner>(
                builder: (context, restaurant, child) => TabBarView(
                    children: getFood(restaurant.menuDinner)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
