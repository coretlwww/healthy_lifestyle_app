import 'package:app/database/models/app_settings.dart';
import 'package:app/database/models/habits.dart';
import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class HabitDB extends ChangeNotifier{
  static late Isar isar;

  //Initialize database
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([HabitSchema, AppSettingsSchema],
        directory: dir.path);
  }

  //Save first date of app startup (for heatmap)
  Future<void> saveFirstLaunchDate() async {
    final existingSettings = await isar.appSettings.where().findFirst();

    if (existingSettings == null) {
      final settings = AppSettings()
        ..firstLaunchedDate = DateTime.now();
      await isar.writeTxn(() => isar.appSettings.put(settings));
    }
  }

  //Get first date of app startup (for heatmap)
  Future<DateTime?> getFirstLaunchDate() async {
    final settings = await isar.appSettings.where().findFirst();
    return settings?.firstLaunchedDate;
  }

  //List of habits
  final List<Habit> currentHabits = [];

  //create a new habit
  Future<void> addHabit(String habitName) async{
    final newHabit = Habit()..name = habitName;
    //save to db
    await isar.writeTxn(() => isar.habits.put(newHabit));
    //re-read from db
    readHabits();
  }

  //read save habits from db
  Future<void> readHabits() async {
    //fetch all habits from db
    List<Habit> fetchedHabits = await isar.habits.where().findAll();
    //give to current habits
    currentHabits.clear();
    currentHabits.addAll(fetchedHabits);
    //update the UI
    notifyListeners();
  }

  //check habit on and off
  Future<void> updateHabitCompletion(int id, bool isCompleted) async {
    //find the specific habit
    final habit = await isar.habits.get(id);
    //update completion status
    if (habit != null) {
      await isar.writeTxn(() async {
        //if habit is completed => add the current date to the completed days list
        if (isCompleted && !habit.completedDays.contains(DateTime.now())){
          final today = DateTime.now();

          habit.completedDays.add(
            DateTime(
              today.year,
              today.month,
              today.day,
            ),
          );
        }
        //if habit is not completed => remove the current date from the list
        else {
          habit.completedDays.removeWhere(
                (date) =>
                  date.year == DateTime.now().year &&
                  date.month == DateTime.now().month &&
                  date.day == DateTime.now().day,
          );
        }
        //save the updated habits back to the db
        await isar.habits.put(habit);
      });
    }
    //re-read from db
    readHabits();
  }

  //edit habit name
  Future<void> updateHabitName(int id, String newName) async {
    //find the specific habit
    final habit = await isar.habits.get(id);
    //update habit name
    if (habit != null) {
      await isar.writeTxn(() async {
        habit.name = newName;
        await isar.habits.put(habit);
      });
    }
    //re-read from db
    readHabits();
  }

  //delete habit
  Future<void> deleteHabit(int id) async {
    //delete
    await isar.writeTxn(() async {
      await isar.habits.delete(id);
    });
    //re-read from db
    readHabits();
  }
}