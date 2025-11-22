import 'package:flutter/material.dart';

class DescribtionWidget extends StatelessWidget {
  final String describtion;
  const DescribtionWidget({super.key, required this.describtion});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60),
      child: Text(
          textAlign: TextAlign.center,
          describtion,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 34.84,
              height: 1.0588,
              fontWeight: FontWeight.bold)),
    );
  }
}
