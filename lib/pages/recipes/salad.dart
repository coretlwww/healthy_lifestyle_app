import 'package:flutter/material.dart';
 
class Salad extends StatelessWidget {
  const Salad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: const Text("Салат",
            style: TextStyle(
              fontFamily: 'CloudWorld',
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
    );
  }
}
