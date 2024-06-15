import 'package:flutter/material.dart';

class ActualButtons extends StatelessWidget {
  final String name;
  final String pagePath;
  final String imagePath;
  const ActualButtons({
    super.key,
    required this.name,
    required this.pagePath,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, pagePath),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          color: Colors.grey.shade50,
          child: Row(
            children: [
              Image.asset(imagePath, width: 75, height: 75,),
              Expanded(child: Column(
                children: [
                  Text(name, textAlign: TextAlign.center,)
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
