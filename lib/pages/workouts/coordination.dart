import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:app/pages/train_categories/choose_coordination.dart';
import 'package:app/pages/train_categories/decoration_workouts.dart';
import 'package:app/pages/train_categories/pages_workouts/make_pages_coordination.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Coordination extends StatelessWidget {
  const Coordination({super.key});

  void navigateToWorkout(BuildContext context, Workout train) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => MakePagesCoordination(train: train),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final trainList = context.read<ChooseCoordination>();
    final coordination = trainList.coordination;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Координация"),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: coordination.length,
                  itemBuilder: (context, index) =>
                      WorkoutDecor(
                          train: coordination[index],
                          onTap: () => navigateToWorkout(context, coordination[index])
                      )
              )
          ),
        ],
      ),
    );
  }
}