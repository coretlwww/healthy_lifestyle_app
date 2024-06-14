import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:app/pages/train_categories/choose_stretching.dart';
import 'package:app/pages/train_categories/decoration_workouts.dart';
import 'package:app/pages/train_categories/pages_workouts/make_pages_stretching.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Stretching extends StatelessWidget {
  const Stretching({super.key});

  void navigateToWorkout(BuildContext context, Workout train) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => MakePagesStretching(train: train),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final trainList = context.read<ChooseStretching>();
    final stretching = trainList.stretching;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Растяжка"),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: stretching.length,
                  itemBuilder: (context, index) =>
                      WorkoutDecor(
                          train: stretching[index],
                          onTap: () => navigateToWorkout(context, stretching[index])
                      )
              )
          ),
        ],
      ),
    );
  }
}