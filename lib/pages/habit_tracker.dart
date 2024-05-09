import 'package:app/components_ht//habit_tile.dart';
import 'package:app/components_ht//heat_map.dart';
import 'package:app/database/habit_db.dart';
import 'package:app/database/models/habits.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/components_ht//util/habit_util.dart';

import '../buttons/popupbutton.dart';
import '../buttons/star.dart';


class HabitTracker extends StatefulWidget {
  const HabitTracker({super.key});

  @override
  State<HabitTracker> createState() => _HabitTrackerState();
}

class _HabitTrackerState extends State<HabitTracker> {

  @override
  void initState() {
    Provider.of<HabitDB>(context, listen: false).readHabits();
    super.initState();
  }

  final TextEditingController textController = TextEditingController();

  void createNewHabit() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: "Создайте новую привычку",
          ),
        ),
        actions: [
          MaterialButton(onPressed: () {
            String newHabitName = textController.text;
            context.read<HabitDB>().addHabit(newHabitName);
            Navigator.pop(context);
            textController.clear();
          },
            child: const Text("Добавить"),
          ),
          MaterialButton(onPressed: () {
            Navigator.pop(context);
            textController.clear();
          },
            child: const Text("Закрыть"),
          ),
        ],
      ),
    );
  }

  void checkHabitOnOff(bool? value, Habit habit) {
    if (value != null) {
      context.read<HabitDB>().updateHabitCompletion(habit.id, value);
    }
  }

  void editHabitBox(Habit habit) {
    textController.text = habit.name;
    showDialog(context: context, builder: (context) => AlertDialog(
        content: TextField(controller: textController),
          actions: [
            MaterialButton(onPressed: () {
              String newHabitName = textController.text;
              context.read<HabitDB>().updateHabitName(habit.id, newHabitName);
              Navigator.pop(context);
              textController.clear();
            },
              child: const Text("Сохранить"),
            ),
            MaterialButton(onPressed: () {
              Navigator.pop(context);
              textController.clear();
            },
              child: const Text("Закрыть"),
            ),
        ],
      )
    );
  }

  void deleteHabitBox(Habit habit) {
    showDialog(context: context, builder: (context) => AlertDialog(
      title: const Text("Вы уверены, что хотите удалить?"),
      actions: [
        MaterialButton(onPressed: () {
          context.read<HabitDB>().deleteHabit(habit.id);
          Navigator.pop(context);
        },
          child: const Text("Удалить"),
        ),
        MaterialButton(onPressed: () {
          Navigator.pop(context);
        },
          child: const Text("Закрыть"),
        ),
      ],
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Center(
          child: const Text("Трекер привычек",
              style: TextStyle(
                fontSize: 30,)),
        ),
        leading: NewButton(),
        actions: [StarButton()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewHabit,
        backgroundColor: Colors.white,
        elevation: 0,
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: [
          _buildHeatMap(),
          _buildHabitList(),
        ],
      ),
    );
  }

  Widget _buildHeatMap() {
    final habitDatabase = context.watch<HabitDB>();
    List<Habit> currentHabits = habitDatabase.currentHabits;
    return FutureBuilder<DateTime?>(
        future: habitDatabase.getFirstLaunchDate(),
        builder: (context, snapshot) {
          if (snapshot.hasData){
            return HeatMap(startDate: snapshot.data!, datasets: prepHeatMapDataset(currentHabits));
          }
          else {
            return Container();
          }
        });
  }

  Widget _buildHabitList() {
    final habitDatabase = context.watch<HabitDB>();
    List<Habit> currentHabits = habitDatabase.currentHabits;
    return ListView.builder(
        itemCount: currentHabits.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final habit = currentHabits[index];
          bool isCompletedToday = isHabitCompletedToday(habit.completedDays);
          return HabitTile(
            text: habit.name,
            isCompleted: isCompletedToday,
            onChanged: (value) => checkHabitOnOff(value, habit),
            editHabit: (context) => editHabitBox(habit),
            deleteHabit:  (context) => deleteHabitBox(habit),
          );
        },
    );
  }
}
