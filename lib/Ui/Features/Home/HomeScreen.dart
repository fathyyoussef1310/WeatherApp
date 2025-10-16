import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/Core/ColorsManager.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsManager.white,
        title: Text("UserName",style: GoogleFonts.poppins(color: ColorsManager.solid3),),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
