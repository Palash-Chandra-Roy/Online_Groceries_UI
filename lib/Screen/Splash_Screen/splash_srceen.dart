import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_groceries_app/Screen/Onbording%20Screen/onbording_screen.dart';
import 'package:online_groceries_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen
({super.key});

  @override
  Widget build(BuildContext context){
   SizeConfig().init(context);
   Future.delayed(const Duration(seconds: 3),(){
    Get.to(OnbordingScreen());
   });
    return Scaffold(
      backgroundColor: const Color(0xFF53B175),
    body: Center(
      child: Image.asset("assets/images/splash.png") 
      ),
    );
  }
}