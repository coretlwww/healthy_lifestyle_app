import 'package:app/pages/food_categories/categories_recipes.dart';
import 'package:app/pages/food_categories/choose_dinner.dart';
import 'package:app/static_components/appbar_recipes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MakePagesDinner extends StatefulWidget {
  final Food food;
  const MakePagesDinner({super.key, required this.food});

  @override
  State<MakePagesDinner> createState() => _MakePagesState();
}

class _MakePagesState extends State<MakePagesDinner> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    isSelected = _isSelected();
  }

  bool _isSelected() {
    final shop = context.read<ChooseDinner>();
    return shop.isInCart(widget.food);
  }

  void addToCart() {
    final shop = context.read<ChooseDinner>();
    shop.addToCart(widget.food);
    setState(() {
      isSelected = true;
    });
  }

  void removeFromCart() {
    final shop = context.read<ChooseDinner>();
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
                      ? const Icon(Icons.star_rounded, size: 50, color: Colors.amber)
                      : const Icon(Icons.star_border_rounded, size: 50, color: Colors.amber),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(widget.food.imagePath, width: 250, height: 250)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(widget.food.description),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(widget.food.description2),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(widget.food.description3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}