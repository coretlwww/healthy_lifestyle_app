import 'package:app/buttons/actual_button.dart';
import 'package:app/buttons/popupbutton.dart';
import 'package:app/buttons/star.dart';
import 'package:flutter/material.dart';


class Train extends StatelessWidget {
  const Train({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: const Text("Тренировки",
            style: TextStyle(
              fontSize: 40,)),
        leading: NewButton(),
        actions: [StarButton()],
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