import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Главная"),
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
    );
  }
}
