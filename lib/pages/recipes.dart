import 'package:app/buttons/actual_button.dart';
import 'package:app/buttons/popupbutton.dart';
import 'package:app/buttons/star.dart';
import 'package:flutter/material.dart';


class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: const Text("Рецепты",
            style: TextStyle(
              fontSize: 40,)),
        leading: NewButton(),
        actions: [StarButton()],
      ),
      body: Center(
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