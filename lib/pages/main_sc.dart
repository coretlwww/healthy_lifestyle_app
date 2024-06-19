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
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Главная"),
      ),
      body:
        Container(
          padding: const EdgeInsets.only(left: 15),
          child: Column(children: <Widget> [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Добро пожаловать!",
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Хорошего дня!",
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 20,
                    )),
              ],
            ),
              Container(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/recipe'),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                          width: 150,
                          height: 150,
                          child: Image.asset('images/food.jpg',)),
                    ),
                    const Text("Рецепты", style: TextStyle(
                      fontSize: 18,
                    ),),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/train'),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                          width: 150,
                          height: 150,
                          child: Image.asset('images/workouts.jpg')),
                    ),
                    const Text("Тренировки", style: TextStyle(
                      fontSize: 18,
                    ),),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/habitTracker'),
                      child: Container(
                          padding: const EdgeInsets.only(top: 15),
                          width: 150,
                          height: 150,
                          child: Image.asset('images/tracker.jpg')),
                    ),
                    const Text("Трекер привычек", style: TextStyle(
                      fontSize: 18,
                    ),)
                  ],
                ),
              ),
          ]),
        ),
    );
  }
}
