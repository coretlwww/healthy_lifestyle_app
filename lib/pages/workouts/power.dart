import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:app/pages/train_categories/choose_power.dart';
import 'package:app/pages/train_categories/decoration_workouts.dart';
import 'package:app/pages/train_categories/pages_workouts/make_pages_power.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Power extends StatelessWidget {
  const Power({super.key});

  void navigateToWorkout(BuildContext context, Workout train) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => MakePagesPower(train: train),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final trainList = context.read<ChoosePower>();
    final power = trainList.power;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: OrdinaryAppBar(titleOfPage: "Силовые"),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: power.length,
                  itemBuilder: (context, index) =>
                      WorkoutDecor(
                          train: power[index],
                          onTap: () => navigateToWorkout(context, power[index])
                      )
              )
          ),
        ],
      ),
    );
  }
}