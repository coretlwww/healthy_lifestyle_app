import 'package:app/static_components/actual_button.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';

class MainFavorites extends StatelessWidget {
  const MainFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Избранное"),
      ),
      body: Column(
        children: [
          ActualButtons(pagePath: '/favRecipe', imagePath: 'images/to.jpg', name: "Рецепты"),
          ActualButtons(pagePath: '/favWorkout', imagePath: 'images/to.jpg', name: "Тренировки"),
        ],
      ),
    );
  }
}
