import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:flutter/material.dart';

class WorkoutDecor extends StatelessWidget {
  final Workout train;
  final void Function()? onTap;

  const WorkoutDecor({
    super.key,
    required this.train,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.grey.shade50,
              child: Row(
                children: [
                  Image.asset(train.imagePath, width: 75, height: 75,),
                  Expanded(child: Column(
                    children: [
                      Text(train.name)
                    ],
                  ))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}