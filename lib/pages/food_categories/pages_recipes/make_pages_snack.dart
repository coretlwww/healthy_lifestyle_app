import 'package:app/pages/food_categories/categories_recipes.dart';
import 'package:app/pages/food_categories/choose_snack.dart';
import 'package:app/static_components/appbar_recipes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MakePagesSnack extends StatefulWidget {
  final Food food;
  const MakePagesSnack({super.key, required this.food});

  @override
  State<MakePagesSnack> createState() => _MakePagesState();
}

class _MakePagesState extends State<MakePagesSnack> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    isSelected = _isSelected();
  }

  bool _isSelected() {
    final shop = context.read<ChooseSnack>();
    return shop.isInCart(widget.food);
  }

  void addToCart() {
    final shop = context.read<ChooseSnack>();
    shop.addToCart(widget.food);
    setState(() {
      isSelected = true;
    });
  }

  void removeFromCart() {
    final shop = context.read<ChooseSnack>();
    shop.removeFromCart(widget.food);
    setState(() {
      isSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
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
                        ? const Icon(Icons.star_rounded, size: 50, color: Colors.amber,)
                        : const Icon(Icons.star_border_rounded, size: 50, color: Colors.amber,),
                  ),
                ],
              ),
              Text(widget.food.description),
            ],
          ),
        ));
  }
}