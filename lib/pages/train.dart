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
            ActualButtons(pagePath: '/cardio', imagePath: 'images/cardio.jpg', name: "Кардио упражнения"),
            ActualButtons(pagePath: '/plyometric', imagePath: 'images/plyometric.jpg', name: "Плиометрические упражнения"),
            ActualButtons(pagePath: '/stretching', imagePath: 'images/stretching.jpg', name: "Растяжка"),
            ActualButtons(pagePath: '/power', imagePath: 'images/power.jpg', name: "Силовые упражнения"),
            ActualButtons(pagePath: '/coordination', imagePath: 'images/coordination.jpg', name: "Упражнения для тренировки равновесия и координации движений"),
          ],
        ),
      ),
    );
  }
}