import 'package:flutter/material.dart';

class ActualButtons extends StatelessWidget {
  final String name;
  final String pathImage;
  final String path;
  const ActualButtons({
    super.key,
    required this.name,
    required this.pathImage,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 90,
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, path);
        },
        icon: Image.asset(
          pathImage,
          width: 75,
          height: 75,
        ),
        label: Text(
          name,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
      ),
    );
  }
  }
