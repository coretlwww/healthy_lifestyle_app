import 'package:app/pages/food_categories/choose_dinner.dart';
import 'package:app/pages/food_categories/choose_lunch.dart';
import 'package:app/pages/food_categories/choose_snack.dart';
import 'package:app/pages/food_categories/pages_recipes/make_pages_breakfast.dart';
import 'package:app/pages/food_categories/categories_recipes.dart';
import 'package:app/pages/food_categories/decoration.dart';
import 'package:app/pages/food_categories/pages_recipes/make_pages_dinner.dart';
import 'package:app/pages/food_categories/pages_recipes/make_pages_lunch.dart';
import 'package:app/pages/food_categories/pages_recipes/make_pages_snack.dart';
import 'package:app/static_components/appbar_recipes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/pages/food_categories/choose_breakfast.dart';

class FoodListView extends StatelessWidget {
  final List<Food> cart;
  final Function(BuildContext, Food) onTap;

  const FoodListView({required this.cart, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          final Food food = cart[index];
          return FoodDecor(
            food: food,
            onTap: () => onTap(context, food),
          );
        },
        childCount: cart.length,
      ),
    );
  }
}

class FavoritePageRecipes extends StatelessWidget {
  const FavoritePageRecipes({super.key});

  void navigateToRecipe(BuildContext context, Food food, Widget Function(Food) pageBuilder) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => pageBuilder(food),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarRecipes(titleOfPage: "Избранные рецепты"),
      ),
      body: CustomScrollView(
        slivers: [
          Consumer<ChooseBreakfast>(
            builder: (context, value, child) => FoodListView(
              cart: value.cart,
              onTap: (context, food) =>
                  navigateToRecipe(context, food, (food) =>
                      MakePagesBreakfast(food: food)),
            ),
          ),
          Consumer<ChooseLunch>(
            builder: (context, value, child) => FoodListView(
              cart: value.cart,
              onTap: (context, food) =>
                  navigateToRecipe(context, food, (food) =>
                      MakePagesLunch(food: food)),
            ),
          ),
          Consumer<ChooseSnack>(
            builder: (context, value, child) => FoodListView(
              cart: value.cart,
              onTap: (context, food) =>
                  navigateToRecipe(context, food, (food) =>
                      MakePagesSnack(food: food)),
            ),
          ),
          Consumer<ChooseDinner>(
            builder: (context, value, child) => FoodListView(
              cart: value.cart,
              onTap: (context, food) =>
                  navigateToRecipe(context, food, (food) =>
                      MakePagesDinner(food: food)),
            ),
          ),
        ],
      ),
    );
  }
}
