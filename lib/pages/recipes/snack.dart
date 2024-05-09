import 'package:app/static_components/actual_button.dart';
import 'package:app/static_components/popupbutton.dart';
import 'package:app/static_components/star.dart';
import 'package:flutter/material.dart';

class Snack extends StatelessWidget {
  const Snack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: const Text("Перекус",
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
                ActualButtons(name: "...", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "...", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "...", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "...", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "...", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "...", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "...", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "...", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "...", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "...", pathImage: 'images/to.jpg', path: '/salad'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}