import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_groceries_app/size_config.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        iconTheme: const IconThemeData(color: Color(0xFFFFFFFF)),
        title: const Text("Filters", style: TextStyle(fontSize: 18,color: Color(0xFF181725)),),
        leading: IconButton(
          icon: const Icon(Icons.close,size: 18,color: Color(0xFF181725),),
          onPressed: (){},
        ),
      ),
      body:Column(
        children: [
         
          
      ]),
    );
  }
}