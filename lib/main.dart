import 'package:app/api/firebase_api.dart';
import 'package:app/database/habit_db.dart';
import 'package:app/pages//fav.dart';
import 'package:app/pages/food_categories/choose_lunch.dart';
import 'package:app/pages/habit_tracker.dart';
import 'package:app/pages/recipes/snack.dart';
import 'package:app/pages/food_categories/choose_breakfast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app/pages//main_sc.dart';
import 'package:app/pages//recipes.dart';
import 'package:app/pages//train.dart';
import 'package:app/pages/recipes//salad.dart';
import 'package:app/pages/recipes//breakfast.dart';
import 'package:app/pages/recipes//lunch.dart';
import 'package:app/pages/recipes//dinner.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //initialize database
  await HabitDB.initialize();
  await HabitDB().saveFirstLaunchDate();
  //notif
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HabitDB()),
        ChangeNotifierProvider(create: (context) => ChooseBreakfast()),
        ChangeNotifierProvider(create: (context) => ChooseLunch())
      ],
      //navigation
      child: MaterialApp(
        navigatorKey: navigatorKey,
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

