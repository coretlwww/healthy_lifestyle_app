import 'package:app/static_components/popupbutton.dart';
import 'package:app/static_components/star.dart';
import 'package:flutter/material.dart';

class AppBarRecipes extends StatelessWidget {
  final String titleOfPage;
  const AppBarRecipes({
    super.key,
    required this.titleOfPage,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      toolbarHeight: 100,
      title: Text(titleOfPage,
          style: const TextStyle(
            fontSize: 20,)),
      leading: NewButton(),
      actions: [StarButton()],
    );
  }
}