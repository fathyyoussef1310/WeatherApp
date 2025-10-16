import 'package:flutter/material.dart';
import 'package:weatherapp/Core/ColorsManager.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorsManager.black,
    );
  }
}
