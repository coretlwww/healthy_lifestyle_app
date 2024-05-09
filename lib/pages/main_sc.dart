import 'package:flutter/material.dart';
import 'package:app/buttons/popupbutton.dart';
import 'package:app/buttons/star.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: const Text("Главная",
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 40,
            )),
        leading: NewButton(),
        actions: [StarButton(),],
      ),
      body:
        Column(children: <Widget> [
          Container(
            padding: const EdgeInsets.only(right: 130, bottom: 5),
            child: const Text("Добро пожаловать!",
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
          ),
          Container(
            padding: const EdgeInsets.only(right: 100, left: 10),
            child: const Text("Хорошего дня, пользователь!",
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 20,
                )),
          ),
            Column(
              children: [
                IconButton(
                  icon: Container(
                    padding: const EdgeInsets.only(top: 10),
                    width: 150,
                      height: 150,
                      child: Image.asset('images/to.jpg')),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.pushNamed(context, '/recipe');
                    },
                ),
                IconButton(
                  icon: Container(
                    padding: const EdgeInsets.only(top: 10),
                      width: 150,
                      height: 150,
                      child: Image.asset('images/to.jpg')),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.pushNamed(context, '/train');
                  },
                ),
                IconButton(
                  icon: Container(
                      padding: const EdgeInsets.only(top: 10),
                      width: 150,
                      height: 150,
                      child: Image.asset('images/to.jpg')),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.pushNamed(context, '/habitTracker');
                  },
                ),
              ],
            ),
          Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 45),
                  child:
                  const Text("Рецепты", style: TextStyle(
                    fontSize: 18,
                  ),)
              ),
              Container(
                  padding: const EdgeInsets.only(left: 80),
                  child:
                  const Text("Тренировки", style: TextStyle(
                    fontSize: 18,
                    ),)
              ),
              Container(
                  padding: const EdgeInsets.only(left: 80),
                  child:
                  const Text("Трекер привычек", style: TextStyle(
                    fontSize: 18,
                  ),)
              )
            ],
          )
        ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: const Text("Дисклеймер!"),
                  actions: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close_rounded))
                  ],
                );
              });
        },
        child: const Icon(
          Icons.warning_rounded,
          color: Colors.black,
        ),
      ),
    );
  }
}
