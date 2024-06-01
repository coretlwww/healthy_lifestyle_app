import 'package:app/pages/food_categories/categories_recipes.dart';
import 'package:app/pages/food_categories/choose_lunch.dart';
import 'package:app/static_components/appbar_recipes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MakePagesLunch extends StatefulWidget {
  final Food food;
  const MakePagesLunch({super.key, required this.food});

  @override
  State<MakePagesLunch> createState() => _MakePagesState();
}

class _MakePagesState extends State<MakePagesLunch> {
  bool isSelected = false;

  void initState() {
    super.initState();
    isSelected = _isSelected();
  }

  bool _isSelected() {
    final shop = context.read<ChooseLunch>();
    return shop.isInCart(widget.food);
  }

  void addToCart() {
    final shop = context.read<ChooseLunch>();
    shop.addToCart(widget.food);
    setState(() {
      isSelected = true;
    });
  }

  void removeFromCart() {
    final shop = context.read<ChooseLunch>();
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
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
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
                  ),
                ],
              ),
              Text(widget.food.description),
            ],
          ),
        ));
  }
}