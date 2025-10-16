import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherapp/Core/RoutesManager.dart';

class SplashScreenAnimation extends StatefulWidget {
  const SplashScreenAnimation({super.key});

  @override
  State<SplashScreenAnimation> createState() => _SplashScreenAnimationState();
}

class _SplashScreenAnimationState extends State<SplashScreenAnimation> {
  @override
  void initState() {
    super.initState();
    _navigateToNext();
  }
  Future<void> _navigateToNext() async {
    await Future.delayed(Duration(seconds: 6));
      Navigator.pushReplacementNamed(context, RoutesManager.splashScreen2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/lottie/Weather-windy.json",
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 30),
             Text("Welcome To WeatherX ☀️", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
