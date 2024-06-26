import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:app/pages/train_categories/choose_plyometric.dart';
import 'package:app/static_components/appbar_recipes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MakePagesPlyometric extends StatefulWidget {
  final Workout train;
  const MakePagesPlyometric({super.key, required this.train});

  @override
  State<MakePagesPlyometric> createState() => _MakePagesState();
}

class _MakePagesState extends State<MakePagesPlyometric> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    isSelected = _isSelected();
  }

  bool _isSelected() {
    final shop = context.read<ChoosePlyometric>();
    return shop.isInCart(widget.train);
  }

  void addToCart() {
    final shop = context.read<ChoosePlyometric>();
    shop.addToCart(widget.train);
    setState(() {
      isSelected = true;
    });
  }

  void removeFromCart() {
    final shop = context.read<ChoosePlyometric>();
    shop.removeFromCart(widget.train);
    setState(() {
      isSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBarRecipes(titleOfPage: widget.train.name),
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
                      ? const Icon(Icons.star_rounded, size: 50, color: Colors.amber,)
                      : const Icon(Icons.star_border_rounded, size: 50, color: Colors.amber,),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(widget.train.description),
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