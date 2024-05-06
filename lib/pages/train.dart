import 'package:app/popupbutton.dart';
import 'package:app/star.dart';
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
            Container(
              width: 500,
              height: 90,
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('images/to.jpg', width: 75, height: 75,),
                  label: Container(
                    padding: const EdgeInsets.only(right: 120, left: 20),
                    child: const Text("Пресс",
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
                  onPressed: () {},
                  icon: Image.asset('images/to.jpg', width: 75, height: 75,),
                  label: Container(
                    padding: const EdgeInsets.only(right: 120, left: 20),
                    child: const Text("Разминка",
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