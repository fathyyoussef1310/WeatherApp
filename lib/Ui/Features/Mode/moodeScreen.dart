import 'package:flutter/material.dart';
import 'package:weatherapp/Core/ColorsManager.dart';
import 'package:weatherapp/Core/Widgets/SearchWidget.dart';

class Moodescreen extends StatefulWidget {
  const Moodescreen({super.key});

  @override
  State<Moodescreen> createState() => _MoodescreenState();
}

class _MoodescreenState extends State<Moodescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.radialGradient.first,
      body: SafeArea(
        child: Column(
          children: [
            SearchWidgetWeather(text: "What's Your Mode Now ",),
          ],
        ),
      ),
    );
  }
}
