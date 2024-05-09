import 'package:app/static_components//actual_button.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';

class Train extends StatelessWidget {
  const Train({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Тренировки"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ActualButtons(name: "Пресс", pathImage: 'images/to.jpg', path: '/salad'),
            ActualButtons(name: "Разминка", pathImage: 'images/to.jpg', path: '/salad'),
          ],
        ),
      ),
    );
  }
}