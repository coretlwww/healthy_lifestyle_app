import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:app/pages/train_categories/choose_cardio.dart';
import 'package:app/pages/train_categories/choose_coordination.dart';
import 'package:app/pages/train_categories/choose_plyometric.dart';
import 'package:app/pages/train_categories/choose_power.dart';
import 'package:app/pages/train_categories/choose_stretching.dart';
import 'package:app/pages/train_categories/decoration_workouts.dart';
import 'package:app/pages/train_categories/pages_workouts/make_pages_cardio.dart';
import 'package:app/pages/train_categories/pages_workouts/make_pages_coordination.dart';
import 'package:app/pages/train_categories/pages_workouts/make_pages_plyometric.dart';
import 'package:app/pages/train_categories/pages_workouts/make_pages_power.dart';
import 'package:app/pages/train_categories/pages_workouts/make_pages_stretching.dart';
import 'package:app/static_components/appbar.dart';
import 'package:app/static_components/appbar_recipes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrainListView extends StatelessWidget {
  final List<Workout> cart;
  final Function(BuildContext, Workout) onTap;

  const TrainListView({required this.cart, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          final Workout train = cart[index];
          return WorkoutDecor(
            train: train,
            onTap: () => onTap(context, train),
          );
        },
        childCount: cart.length,
      ),
    );
  }
}

class FavoritePageWorkout extends StatelessWidget {
  const FavoritePageWorkout({super.key});

  void navigateToWorkout(BuildContext context, Workout train, Widget Function(Workout) pageBuilder) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => pageBuilder(train),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarRecipes(titleOfPage: "Избранные тренировки"),
      ),
      body: CustomScrollView(
        slivers: [
          Consumer<ChooseCardio>(
            builder: (context, value, child) => TrainListView(
              cart: value.cart,
              onTap: (context, train) =>
                  navigateToWorkout(context, train, (train) =>
                      MakePagesCardio(train: train)),
            ),
          ),
          Consumer<ChooseCoordination>(
            builder: (context, value, child) => TrainListView(
              cart: value.cart,
              onTap: (context, train) =>
                  navigateToWorkout(context, train, (train) =>
                      MakePagesCoordination(train: train)),
            ),
          ),
          Consumer<ChoosePlyometric>(
            builder: (context, value, child) => TrainListView(
              cart: value.cart,
              onTap: (context, train) =>
                  navigateToWorkout(context, train, (train) =>
                      MakePagesPlyometric(train: train)),
            ),
          ),
          Consumer<ChoosePower>(
            builder: (context, value, child) => TrainListView(
              cart: value.cart,
              onTap: (context, train) =>
                  navigateToWorkout(context, train, (train) =>
                      MakePagesPower(train: train)),
            ),
          ),
          Consumer<ChooseStretching>(
            builder: (context, value, child) => TrainListView(
              cart: value.cart,
              onTap: (context, train) =>
                  navigateToWorkout(context, train, (train) =>
                      MakePagesStretching(train: train)),
            ),
          ),
        ],
      ),
    );
  }
}