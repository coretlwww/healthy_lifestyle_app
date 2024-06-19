import 'package:app/static_components//actual_button.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';


class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Рецепты"),
      ),
      body:
          Center(
            child: Column(
              children: <Widget>[
                ActualButtons(name: "Завтрак", pagePath: '/breakfast', imagePath: 'images/breakfast.jpg'),
                ActualButtons(name: "Обед", pagePath: '/lunch', imagePath: 'images/lunch.jpg'),
                ActualButtons(name: "Перекус", pagePath: '/snack', imagePath: 'images/snack.jpg'),
                ActualButtons(name: "Ужин", pagePath: '/dinner', imagePath: 'images/dinner.jpg'),
              ],
            ),
          ),
      );
  }
}