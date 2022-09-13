import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String title;
  const MyButton({required this.iconImagePath, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 40,
                  spreadRadius: 10,
                ),
              ]),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
