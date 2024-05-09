import 'package:flutter/material.dart';
import 'package:app/buttons/popupbutton.dart';
import 'package:app/buttons/star.dart';
import 'package:app/buttons/actual_button.dart';

class Breakfast extends StatelessWidget {
  const Breakfast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: const Text("Завтрак",
            style: TextStyle(
              fontSize: 40,
            )),
        leading: NewButton(),
        actions: [StarButton()],
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: <Widget>[
                ActualButtons(name: "Пышные сырники", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Яичные блинчики с ветчиной и сыром", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Оладьи кабачковые", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Кекс с орехами и бананами", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Морковные кексы с яблоками и орехами", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Капустные оладьи на кефире", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Запеканка творожная", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Блины с творогом и клубникой", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Запеканка из тыквы с морковью", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Манник на кефире", pathImage: 'images/to.jpg', path: '/salad'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

