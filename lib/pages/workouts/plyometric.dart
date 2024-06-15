import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:app/pages/train_categories/choose_plyometric.dart';
import 'package:app/pages/train_categories/decoration_workouts.dart';
import 'package:app/pages/train_categories/pages_workouts/make_pages_plyometric.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Plyometric extends StatelessWidget {
  const Plyometric({super.key});

  void navigateToWorkout(BuildContext context, Workout train) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => MakePagesPlyometric(train: train)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final trainList = context.read<ChoosePlyometric>();
    final plyometric = trainList.plyometric;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Плиометрика"),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: plyometric.length,
                  itemBuilder: (context, index) =>
                      WorkoutDecor(
                          train: plyometric[index],
                          onTap: () => navigateToWorkout(context, plyometric[index])
                      )
              )
          ),
        ],
      ),
    );
  }
}