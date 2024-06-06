import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class NewButton extends StatelessWidget {
  const NewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
        context: context,
        bodyBuilder: (context) => const MenuItems(),
        width: 200,
        height: 210,
        backgroundColor: Colors.deepPurple.shade100,
      ),
      child: Icon(Icons.list_rounded, size: 50, color: Colors.deepPurple.shade300,),
    );
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //1st
        Container(
          padding: const EdgeInsets.only(top:10),
          height: 50,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/main');
            },
            child: const Text("Главная"),
          ),
        ),
        //2nd
        Container(
          padding: const EdgeInsets.only(top:10),
          height: 50,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/recipe');
            },
            child: const Text("Рецепты"),
          ),
        ),
        //3rd
        Container(
          padding: const EdgeInsets.only(top:10),
          height: 50,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/train');
            },
            child: const Text("Тренировки"),
          ),
        ),
        //4th
        Container(
          padding: const EdgeInsets.only(top:10),
          height: 50,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/habitTracker');
            },
            child: const Text("Трекер привычек"),
          ),
        ),
      ],
    );
  }
}