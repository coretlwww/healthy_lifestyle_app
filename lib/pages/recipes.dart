import 'package:app/static_components//actual_button.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';


class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Рецепты"),
      ),
      body:
          Center(
            child: Column(
              children: <Widget>[
                ActualButtons(name: "Завтрак", pathImage: 'images/to.jpg', path: '/breakfast'),
                ActualButtons(name: "Обед", pathImage: 'images/to.jpg', path: '/lunch'),
                ActualButtons(name: "Перекус", pathImage: 'images/to.jpg', path: '/snack'),
                ActualButtons(name: "Ужин", pathImage: 'images/to.jpg', path: '/dinner'),
              ],
            ),
          ),
      );
  }
}