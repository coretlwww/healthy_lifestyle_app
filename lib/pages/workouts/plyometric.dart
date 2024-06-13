import 'package:app/pages/train_categories/choose_plyometric.dart';
import 'package:app/pages/train_categories/decoration_workouts.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Plyometric extends StatelessWidget {
  const Plyometric({super.key});


  @override
  Widget build(BuildContext context) {
    final trainList = context.read<ChoosePlyometric>();
    final plyometric = trainList.plyometric;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Плиометрические"),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: plyometric.length,
                  itemBuilder: (context, index) =>
                      WorkoutDecor(
                          train: plyometric[index],
                          onTap: () {}
                      )
              )
          ),
        ],
      ),
    );
  }
}