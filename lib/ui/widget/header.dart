import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String text;
  const Header({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Text(
          "See all",
          style: TextStyle(color: Colors.grey, fontSize: 15),
        )
      ],
    );
  }
}
