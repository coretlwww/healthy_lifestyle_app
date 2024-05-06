import 'package:app/popupbutton.dart';
import 'package:app/star.dart';
import 'package:flutter/material.dart';


class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: const Text("Рецепты",
            style: TextStyle(
              fontSize: 40,)),
        leading: NewButton(),
        actions: [StarButton()],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 500,
              height: 90,
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/breakfast');
                  },
                  icon: Image.asset('images/to.jpg', width: 75, height: 75,),
                  label: Container(
                    padding: const EdgeInsets.only(right: 120, left: 20),
                    child: const Text("Завтрак",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white))),
            ),
            Container(
              width: 500,
              height: 90,
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/lunch');
                  },
                  icon: Image.asset('images/to.jpg', width: 75, height: 75,),
                  label: Container(
                    padding: const EdgeInsets.only(right: 120, left: 20),
                    child: const Text("Обед",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white))),
            ),
            Container(
              width: 500,
              height: 90,
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dinner');
                  },
                  icon: Image.asset('images/to.jpg', width: 75, height: 75,),
                  label: Container(
                    padding: const EdgeInsets.only(right: 120, left: 20),
                    child: const Text("Ужин",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white))),
            ),
            Container(
              width: 500,
              height: 90,
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/snack');
                  },
                  icon: Image.asset('images/to.jpg', width: 75, height: 75,),
                  label: Container(
                    padding: const EdgeInsets.only(right: 120, left: 20),
                    child: const Text("Перекус",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}