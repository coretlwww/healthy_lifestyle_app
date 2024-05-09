import 'package:app/static_components/actual_button.dart';
import 'package:flutter/material.dart';
import 'package:app/static_components/popupbutton.dart';
import 'package:app/static_components/star.dart';

class Lunch extends StatelessWidget {
  const Lunch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: const Text("Обед",
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
                ActualButtons(name: "Индейка с брокколи в сливочном соусе", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Курица тушеная с овощами", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Паста с курицей и грибами", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Рыба с овощами", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Рыбное суфле", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Говядина тушеная с овощами", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Паста Болоньезе", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Фунчоза с говядиной и овощами", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Рагу с индейкой и стручковой фасолью", pathImage: 'images/to.jpg', path: '/salad'),
                ActualButtons(name: "Плов из курицы", pathImage: 'images/to.jpg', path: '/salad'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
