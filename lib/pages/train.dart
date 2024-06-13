import 'package:app/static_components//actual_button.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';

class Train extends StatelessWidget {
  const Train({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Тренировки"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ActualButtons(pagePath: '/cardio', imagePath: 'images/to.jpg', name: "Кардио тренировки"),
            ActualButtons(pagePath: '/plyometric', imagePath: 'images/to.jpg', name: "Плиометрические упражнения"),
            ActualButtons(pagePath: '/stretching', imagePath: 'images/to.jpg', name: "Растяжка"),
            ActualButtons(pagePath: '/power', imagePath: 'images/to.jpg', name: "Силовые тренировки"),
            ActualButtons(pagePath: '/coordination', imagePath: 'images/to.jpg', name: "Упражнения для тренировки равновесия и координации движений"),
          ],
        ),
      ),
    );
  }
}