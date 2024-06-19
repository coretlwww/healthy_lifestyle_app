import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown.shade100, width: 2),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.brown.shade100,
                  ),
                  child: const Text(
                    "Здравствуй, уважаемый пользователь!\nНаше приложение предназначено исключительно для поддержания здорового образа жизни.\nЕсли у Вас есть особые медицинские показания, необходимо проконсультироваться с врачом перед выполнением упражнений или приготовлением блюд.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.5),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/main'),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.brown.shade100, width: 2),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.brown.shade100,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text("Понятно"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
