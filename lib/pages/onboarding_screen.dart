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
              Container(
                color: Colors.white,
                child: const Center(
                    child:
                    Text("Данное приложение предназначено\n для поддержания здорового образа жизни")
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment(0, 0.5),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/main'),
              child: Text("Понятно"),
              ),
            )
        ],
      ),
    );
  }
}
