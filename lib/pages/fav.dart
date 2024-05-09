import 'package:app/buttons/popupbutton.dart';
import 'package:app/buttons/star.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: const Text("Избранное",
            style: TextStyle(
              fontSize: 40,),),
        leading: NewButton(),
        actions: [StarButton()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
