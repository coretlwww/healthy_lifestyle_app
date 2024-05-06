import 'package:flutter/material.dart';

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
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
                size: 57,
              ))
        ],
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
                    Navigator.pushNamed(context, '/salad');
                  },
                  icon: Image.asset('images/to.jpg', width: 75, height: 75,),
                  label: Container(
                    padding: const EdgeInsets.only(right: 120, left: 20),
                    child: const Text("Рецепт",
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
                    child: const Text("Рецепт",
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
                    child: const Text("Рецепт",
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
                    child: const Text("Рецепт",
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
                    child: const Text("Рецепт",
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
