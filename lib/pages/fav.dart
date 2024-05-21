import 'package:app/static_components/make_pages.dart';
import 'package:app/pages/food_categories/categories_recipes.dart';
import 'package:app/pages/food_categories/decoration.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/pages/food_categories/choose_breakfast.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage ({super.key});

  void navigateToRecipe(BuildContext context, int index) {
    final shop = context.read<ChooseBreakfast>();
    final foodMenu = shop.menuBreakfast;

    Navigator.push(context, MaterialPageRoute(
      builder: (context) => MakePages(food: foodMenu[index]),
    ));
  }

  @override
  Widget build(BuildContext context) {

    return Consumer<ChooseBreakfast>(
        builder: (context, value, child) => Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: OrdinaryAppBar(titleOfPage: "Избранное"),
            ),
            body: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  final Food food = value.cart[index];
                  return FoodDecor(
                    food: food,
                    onTap: () => navigateToRecipe(context, index),);
                }
            )
        ));
  }
}
