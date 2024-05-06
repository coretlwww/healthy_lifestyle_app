import 'package:app/database/habit_db.dart';
import 'package:app/pages//fav.dart';
import 'package:app/pages/habit_tracker.dart';
import 'package:app/pages/recipes/snack.dart';
import 'package:flutter/material.dart';
import 'package:app/pages//main_sc.dart';
import 'package:app/pages//recipes.dart';
import 'package:app/pages//train.dart';
import 'package:app/pages/recipes//salad.dart';
import 'package:app/pages/recipes//breakfast.dart';
import 'package:app/pages/recipes//lunch.dart';
import 'package:app/pages/recipes//dinner.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //initialize database
  await HabitDB.initialize();
  await HabitDB().saveFirstLaunchDate();

  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => HabitDB()),
        ],
      //navigation
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const MainScreen(),
          '/recipe': (context) => const Recipe(),
          '/train': (context) => const Train(),
          '/salad': (context) => const Salad(),
          '/breakfast': (context) => const Breakfast(),
          '/lunch': (context) => const Lunch(),
          '/dinner': (context) => const Dinner(),
          '/snack': (context) => const Snack(),
          '/fav': (context) => const Favorites(),
          '/habitTracker': (context) => const HabitTracker(),
        },
      ),
    ),
  );
}

