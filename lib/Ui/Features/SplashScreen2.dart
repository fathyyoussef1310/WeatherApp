import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/Core/ColorsManager.dart';
import 'package:weatherapp/Core/RoutesManager.dart';
import 'package:weatherapp/Core/Widgets/CustomeElevetedButton.dart';

class Splashscreen2 extends StatelessWidget {
  const Splashscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Padding(
            padding: REdgeInsets.all(19.0),
            child: Center(child: Text("Let’s See The Weather Around you 🌞",style: GoogleFonts.poppins(color: ColorsManager.white,fontSize: 44.8.sp,fontWeight: FontWeight.bold),)),
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: customeElevetedButton(text: "lets go", backgroundColor: ColorsManager.white, onPressed: () {
                  Navigator.pushReplacementNamed(context, RoutesManager.layout);
                }, fourgroundColor: ColorsManager.grey,),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}