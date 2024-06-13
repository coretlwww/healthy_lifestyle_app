import 'package:app/api/firebase_api.dart';
import 'package:app/database/habit_db.dart';
import 'package:app/pages/favorites/favorite_recipes.dart';
import 'package:app/pages/favorites/favorites_main.dart';
import 'package:app/pages/food_categories/choose_dinner.dart';
import 'package:app/pages/food_categories/choose_lunch.dart';
import 'package:app/pages/food_categories/choose_snack.dart';
import 'package:app/pages/habit_tracker.dart';
import 'package:app/pages/onboarding_screen.dart';
import 'package:app/pages/recipes/snack.dart';
import 'package:app/pages/food_categories/choose_breakfast.dart';
import 'package:app/pages/train_categories/choose_coordination.dart';
import 'package:app/pages/train_categories/choose_plyometric.dart';
import 'package:app/pages/train_categories/choose_power.dart';
import 'package:app/pages/train_categories/choose_stretching.dart';
import 'package:app/pages/workouts/cardio.dart';
import 'package:app/pages/train_categories/choose_cardio.dart';
import 'package:app/pages/workouts/coordination.dart';
import 'package:app/pages/workouts/plyometric.dart';
import 'package:app/pages/workouts/power.dart';
import 'package:app/pages/workouts/stretching.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app/pages//main_sc.dart';
import 'package:app/pages//recipes.dart';
import 'package:app/pages//train.dart';
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
        ChangeNotifierProvider(create: (context) => ChooseLunch()),
        ChangeNotifierProvider(create: (context) => ChooseSnack()),
        ChangeNotifierProvider(create: (context) => ChooseDinner()),
        ChangeNotifierProvider(create: (context) => ChooseCardio()),
        ChangeNotifierProvider(create: (context) => ChoosePlyometric()),
        ChangeNotifierProvider(create: (context) => ChooseStretching()),
        ChangeNotifierProvider(create: (context) => ChoosePower()),
        ChangeNotifierProvider(create: (context) => ChooseCoordination()),
      ],
      //navigation
      child: MaterialApp(
        navigatorKey: navigatorKey,
        initialRoute: '/',
        routes: {
          '/': (context) => const OnBoardingScreen(),
          '/main': (context) => const MainScreen(),
          '/recipe': (context) => const Recipe(),
          '/train': (context) => const Train(),
          '/breakfast': (context) => const Breakfast(),
          '/lunch': (context) => const Lunch(),
          '/dinner': (context) => const Dinner(),
          '/snack': (context) => const Snack(),
          '/fav': (context) => const MainFavorites(),
          '/favRecipe': (context) => const FavoritePageRecipes(),
          '/habitTracker': (context) => const HabitTracker(),
          '/cardio': (context) => const Cardio(),
          '/plyometric': (context) => const Plyometric(),
          '/stretching': (context) => const Stretching(),
          '/power': (context) => const Power(),
          '/coordination': (context) => const Coordination(),
        },
      ),
    ),
  );
}

