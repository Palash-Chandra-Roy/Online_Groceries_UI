import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_groceries_app/Widget/custom_button.dart';
import 'package:online_groceries_app/size_config.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: kHeight(150),),
            Center(
              child: Image.asset("assets/images/order_accepted.png",
              height: kHeight(240),
              width: kWidth(260),
              fit: BoxFit.cover,
              ),
            ),
             SizedBox(height: kHeight(66),),
             const Center(
               child:  Text("Yuer order has been \n Accepted",
               style: TextStyle(fontSize: 28,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
             ),
             SizedBox(height: kHeight(20),),
              const Center(child: Text("Your items has been placcd and is on \n it's way to being processed "
              ,style: TextStyle(fontSize: 16,color: Color(0xFF7C7C7C)),)),
              SizedBox(height:kHeight(135),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: CustomButton(
                  buttonText: "Track Order",
                  onPresseh: (){
                    showModalBottomSheet(
                      context: context,
                       builder: (context){
                        return Column(
                          children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: (){
                                    Get.back(); 
                                  }, 
                                  icon: const Icon(Icons.close,color: Color(0xFF000000),size: 25,)),
                                  Container()
                                ],
                              ),
                              Center(
                                child: Image.asset("assets/images/order_failed.png",
                                height: kHeight(180),
                                width: kWidth(160),
                                fit: BoxFit.cover,),
                              ) ,
                              SizedBox(height: kHeight(30),),
                              const Text("oops! Order Failed ", style: TextStyle(fontSize: 28,color: Color(0xFF181725)),),
                             // SizedBox(height: kHeight(20),),
                              const Text("Semeting want tambly wrong  ",style: TextStyle(fontSize: 16,color: Color(0xFF7C7C7C)),),
                              SizedBox(height: kHeight(20),),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                child: Center(
                                  child: CustomButton(
                                    buttonText: "Please Try Agen",
                                    onPresseh: (){

                                    },
                                    color: const Color(0xFF53B175),
                                    textColor: const Color(0xFFFFF9FF)),
                                ),
                              ),
                           // SizedBox(height: kHeight(20),),
                            const Text("Back to Home ",style:TextStyle(fontSize: 18,color: Color(0xFF181725)),)
               ]     );
                       });
                  //   Get.bottomSheet( 
                  // Column(
                  //   children: [
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         IconButton(
                  //           onPressed: (){
                  //           Get.back(); 
                  //         }, 
                  //         icon: const Icon(Icons.close,color: Color(0xFF000000),size: 25,)),
                  //         Container()
                  //       ],
                  //     ),
                  //     Center(
                  //       child: Image.asset("assets/images/order_failed.png",
                  //       height: kHeight(180),
                  //       width: kWidth(160),
                  //       fit: BoxFit.cover,),
                  //     ) ,
                  //     SizedBox(height: kHeight(30),),
                  //     const Text("oops! Order Failed ", style: TextStyle(fontSize: 28,color: Color(0xFF181725)),),
                  //     SizedBox(height: kHeight(20),),
                  //     const Text("Semeting want tambly wrong  ",style: TextStyle(fontSize: 16,color: Color(0xFF7C7C7C)),),
                  //     SizedBox(height: kHeight(20),),
                  //     Center(
                  //       child: CustomButton(
                  //         buttonText: "Please Try Agen",
                  //         onPresseh: (){

                  //         },
                  //         color: const Color(0xFF53B175),
                  //         textColor: const Color(0xFFFFF9FF)),
                  //     ),
                  //    SizedBox(height: kHeight(20),),
                  //   const Text("Back to Home ",style:TextStyle(fontSize: 18,color: Color(0xFF181725)),)
                  //   ],
                  // )
                  // );
                  },
                  color: const Color(0xFF53B175),
                  textColor: const Color(0xFFFFFFFF)),
              ),
               SizedBox(height: kHeight(25),),
            const Center(
                child:Text("Back to home ",style: TextStyle(fontSize: 18,color: Color(0xFF181725)),),
              ),
              SizedBox(height: kHeight(62),),
        ]),
      ),
    );
  }
}