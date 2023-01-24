import 'package:flutter/foundation.dart';
 import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
 import 'package:get/get.dart';
import 'package:online_groceries_app/Screen/Explore/Explore%20Controller/explore_controller.dart';
 import 'package:get/get_core/src/get_main.dart';

import 'package:online_groceries_app/size_config.dart';



class ExploreScreen extends StatelessWidget {
   ExploreScreen({super.key});

   final ExploreController _exploreController =Get.put(ExploreController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Color(0xFF181725)),
        title: const Text("Find Products",style: TextStyle(fontSize: 18,color: Color(0xFF181725)),),
      ),
      body: Card(
      child: GridView.builder(  
        itemCount: _exploreController.exploreItem.length,  
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
            crossAxisCount: 2,  
            crossAxisSpacing: 20.0,  
            mainAxisSpacing: 20.0 ,
            childAspectRatio: 2/2
        ),  
        itemBuilder: (BuildContext context, index){  
          return Container(
            height: kHeight(190,),
            width: kWidth(175),
            color: const Color(0xFFF7A593),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(_exploreController.exploreItem[index].image,
                height: kHeight(75),
                width: kWidth(111),
                fit: BoxFit.cover,),
                SizedBox(height: kHeight(27),),
                Text(_exploreController.exploreItem[index].productName,style: const TextStyle(fontSize: 16,color: Color(0xFF181725),fontWeight: FontWeight.bold),)
            ]),
          );  
        },  
      ),
        ), 
    );
  }

}