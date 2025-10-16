import 'package:flutter/material.dart';
import 'package:weatherapp/Core/ColorsManager.dart';

class Moodescreen extends StatefulWidget {
  const Moodescreen({super.key});

  @override
  State<Moodescreen> createState() => _MoodescreenState();
}

class _MoodescreenState extends State<Moodescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
    );
  }
}
