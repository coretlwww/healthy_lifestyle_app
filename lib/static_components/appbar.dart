import 'package:app/static_components/popupbutton.dart';
import 'package:app/static_components/star.dart';
import 'package:flutter/material.dart';

class OrdinaryAppBar extends StatelessWidget {
  final String titleOfPage;
  const OrdinaryAppBar({
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
            fontSize: 40,)),
      leading: const NewButton(),
      actions: const [StarButton()],
    );
  }
}
