import 'package:app/main.dart';
import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:app/pages/train_categories/choose_cardio.dart';
import 'package:app/pages/train_categories/decoration_workouts.dart';
import 'package:app/pages/train_categories/pages_workouts/make_pages_cardio.dart';
import 'package:app/static_components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cardio extends StatelessWidget {
  const Cardio({super.key});

  void navigateToWorkout(BuildContext context, Workout train) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => MakePagesCardio(train: train),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final trainList = context.read<ChooseCardio>();
    final cardio = trainList.cardio;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: OrdinaryAppBar(titleOfPage: "Кардио"),
        ),
        body: Column(
          children: [
            Expanded(
                  child: ListView.builder(
                      itemCount: cardio.length,
                      itemBuilder: (context, index) =>
                          WorkoutDecor(
                              train: cardio[index],
                              onTap: () => navigateToWorkout(context, cardio[index])
                          )
                  )
                  ),
          ],
        ),
        );
  }
}
