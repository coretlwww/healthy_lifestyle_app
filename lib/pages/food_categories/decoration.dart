import 'package:app/pages/food_categories/categories_recipes.dart';
import 'package:flutter/material.dart';

class FoodDecor extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodDecor({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.grey.shade50,
              child: Row(
                children: [
                  Image.asset(food.imagePath, width: 75, height: 75,),
                  Expanded(child: Column(
                    children: [
                      Text(food.name, textAlign: TextAlign.center,)
                    ],
                  ))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
