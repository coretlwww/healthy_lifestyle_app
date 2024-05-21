import 'package:app/pages/food_categories/categories_recipes.dart';
import 'package:app/pages/food_categories/choose_breakfast.dart';
import 'package:app/static_components/appbar_recipes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MakePages extends StatefulWidget {
  final Food food;
  const MakePages({super.key, required this.food});

  @override
  State<MakePages> createState() => _MakePagesState();
}

class _MakePagesState extends State<MakePages> {
  bool isSelected = false;

  void initState() {
    super.initState();
    isSelected = _isSelected();
  }

  bool _isSelected() {
    final shop = context.read<ChooseBreakfast>();
    return shop.isInCart(widget.food);
  }

  void addToCart() {
    final shop = context.read<ChooseBreakfast>();
    shop.addToCart(widget.food);
    setState(() {
      isSelected = true;
    });
  }

  void removeFromCart() {
    final shop = context.read<ChooseBreakfast>();
    shop.removeFromCart(widget.food);
    setState(() {
      isSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarRecipes(titleOfPage: widget.food.name),
      ),
      body: GestureDetector(
          onTap: () {
            if (isSelected) {
              removeFromCart();
            } else {
              addToCart();
            }
          },
          child: isSelected
              ? Icon(Icons.star_rounded, size: 50, color: Colors.amber,)
              : Icon(Icons.star_border_rounded, size: 50, color: Colors.amber,),
      ));
  }
}
