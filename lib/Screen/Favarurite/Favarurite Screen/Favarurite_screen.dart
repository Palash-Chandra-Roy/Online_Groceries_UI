import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_groceries_app/Screen/Favarurite/Favarurite%20Controller/favarurite_controller.dart';
import 'package:online_groceries_app/Screen/Order%20Accepted/Order%20Accepted%20Srceen/order_accepted_screen.dart';
import 'package:online_groceries_app/Screen/Profile/Profile%20Screen/profile_screen.dart';
import 'package:online_groceries_app/Widget/custom_button.dart';
import 'package:online_groceries_app/size_config.dart';

class FavaruriteScreen extends StatelessWidget {
  FavaruriteScreen({super.key});

 final FavaruriteController _favaruriteController =Get.put(FavaruriteController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        iconTheme: const IconThemeData(color: Color(0xFFFFFFFF)),
        title: const Text("Favarurite", style: TextStyle(fontSize: 18,color: Color(0xFF181725)),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _favaruriteController.favaruriteItem.length,
                itemBuilder: (context, index) => 
                Column(
                   children: [
                  // Container(
                  //   height: kHeight(4),
                  //   color: Colors.grey,
                  // ),
                   SizedBox(height: kHeight(30),),
                   Container(
                     height: kHeight(110),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(_favaruriteController.favaruriteItem[index].image,
                            height: kHeight(55),
                            width: kWidth(30),
                            fit: BoxFit.cover,),
                            SizedBox(width: kWidth(30),),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(_favaruriteController.favaruriteItem[index].producName,style: const TextStyle(fontSize:16,color: Color(0xFF181725) ),
                                ),
                               Text(_favaruriteController.favaruriteItem[index].productSystem,style: const TextStyle(fontSize: 14,color: Color(0xFF7C7C7C)),)
                              ],
                            ),
                           SizedBox(width: kWidth(16),),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(_favaruriteController.favaruriteItem[index].producCost,style: const TextStyle(fontSize: 16,color: Color(0xFF181725)),),
                                SizedBox(width: kWidth(16),),
                                 const Icon(Icons.chevron_right,size: 18,)
                                // IconButton(
                                //   onPressed: (){},
                                //   icon: Icon(Icons.chevron_right,color: Color(0xFF181725),size: 14,))
                              ],
                            ),
                        ]
                        ),
                         SizedBox(height: kHeight(30),),
                        Expanded(
                          child: Container(
                            height: kHeight(2),
                            color: const Color(0xFFE2E2E2),
                          ),
                        ),
                       SizedBox(height: kHeight(20),),
                      ],
                    ),
                   ),
                ],
                  )
              ),
            ),
            // SizedBox(height: kHeight(40),),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,),
                      child: CustomButton(
                        buttonText: "Add All To Card ",
                        onPresseh: (){
                          Get.to(OrderAcceptedScreen());
                        },
                        color: const Color(0xFF53B175),
                        textColor: const Color(0xFFFFFFFF)
                        ),
                    )
          ],
        ),
      ),
    );
  }
}