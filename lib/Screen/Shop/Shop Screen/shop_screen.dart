import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_groceries_app/Screen/BottomNavBar/bottom_nav_bar_screen.dart';
import 'package:online_groceries_app/size_config.dart';

class ShopScreen extends StatelessWidget {
  
const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Center(
        child: Text(
        "This is Shop Screen"
      )),
      
    );
  }
}