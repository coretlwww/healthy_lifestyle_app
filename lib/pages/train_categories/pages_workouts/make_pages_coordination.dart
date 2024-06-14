import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:app/pages/train_categories/choose_coordination.dart';
import 'package:app/static_components/appbar_recipes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MakePagesCoordination extends StatefulWidget {
  final Workout train;
  const MakePagesCoordination({super.key, required this.train});

  @override
  State<MakePagesCoordination> createState() => _MakePagesState();
}

class _MakePagesState extends State<MakePagesCoordination> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    isSelected = _isSelected();
  }

  bool _isSelected() {
    final shop = context.read<ChooseCoordination>();
    return shop.isInCart(widget.train);
  }

  void addToCart() {
    final shop = context.read<ChooseCoordination>();
    shop.addToCart(widget.train);
    setState(() {
      isSelected = true;
    });
  }

  void removeFromCart() {
    final shop = context.read<ChooseCoordination>();
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
      body: Column(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(widget.train.description),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(widget.train.description2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(widget.train.description3),
            ],
          ),
        ],
      ),
    );
  }
}