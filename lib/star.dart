import 'package:flutter/material.dart';

class StarButton extends StatelessWidget {
  const StarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/fav');
        },
        icon: const Icon(
          Icons.star_border_rounded,
          color: Colors.black,
          size: 45,
        )
    );
  }
}
