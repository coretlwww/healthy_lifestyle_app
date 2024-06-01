import 'package:app/pages/food_categories/categories_recipes.dart';
import 'package:app/pages/food_categories/choose_breakfast.dart';
import 'package:app/static_components/appbar_recipes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MakePagesBreakfast extends StatefulWidget {
  final Food food;
  const MakePagesBreakfast({super.key, required this.food});

  @override
  State<MakePagesBreakfast> createState() => _MakePagesState();
}

class _MakePagesState extends State<MakePagesBreakfast> {
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
      body: Column(
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
      ));
  }
}
