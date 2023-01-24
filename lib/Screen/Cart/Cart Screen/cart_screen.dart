import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_groceries_app/Screen/Cart/Cart%20Controller/cart_controller.dart';
import 'package:online_groceries_app/Screen/Favarurite/Favarurite%20Screen/Favarurite_screen.dart';
import 'package:online_groceries_app/Screen/Order%20Accepted/Order%20Accepted%20Srceen/order_accepted_screen.dart';
import 'package:online_groceries_app/Widget/custom_button.dart';
import 'package:online_groceries_app/size_config.dart';

class CartScreen extends StatelessWidget {
   CartScreen({super.key});

  final CartController _cartController=Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        iconTheme: const IconThemeData(color: Color(0xFFFFFFFF)),
        title: const Text("My Cart", style: TextStyle(fontSize: 18,color: Color(0xFF181725)),),
      ),
     body:SafeArea(
       child: Column(
         children: [
           Expanded(
             child: ListView.builder(
               itemCount: _cartController.cartItem.length,
               itemBuilder: (context, index) => 
               Column(
                 children: [
                   Container(
                     height: kHeight(120),
                     child: ListTile(
                       leading: Image.asset(_cartController.cartItem[index].image,
                       height: kHeight(65),width: kWidth(70),fit: BoxFit.cover,),
                         title: Column(
                           mainAxisAlignment:MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(_cartController.cartItem[index].producName,style: const TextStyle(fontSize: 16,color: Color(0xFF181725)),),
                                 SizedBox(height: kHeight(5),),
                                 Text(_cartController.cartItem[index].productSystem,style: const TextStyle(fontSize: 14,color: Color(0xFF7C7C7C)),),
                                 SizedBox(height: kHeight(13),),
                                 Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     Container(
                                       height: kHeight(45),
                                       width: kWidth(40),
                                       decoration: BoxDecoration(
                                         border: Border.all(color: const Color(0xFFE2E2E2),width: 2),
                                         borderRadius: BorderRadius.circular(20),
                                       ),
                                       child: IconButton(
                                         onPressed: (){},
                                         icon: const Center(child: Icon(Icons.remove,size: 18,color: Color(0xFFB3B3B3),))),
                                     ),
                                     // SizedBox(height: kHeight(30),),
                                     const Text("1",style:TextStyle(fontSize: 18,color: Color(0xFF7C7C7C)),),
                                     // SizedBox(height: kHeight(30),),
                                     Container(
                                       height: kHeight(45),
                                       width: kWidth(40),
                                       decoration: BoxDecoration(
                                         border: Border.all(color: const Color(0xFFE2E2E2),width: 2),
                                         borderRadius: BorderRadius.circular(20),
                                       ),
                                       child: IconButton(
                                         onPressed: (){
                                            Get.to(FavaruriteScreen());
                                         },
                                         icon: const Center(child: Icon(Icons.add,size: 18,color: Color(0xFF53B175),))),
                                     ),
                                   ],
                                 )
                             ]),
                       trailing: Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                         IconButton(onPressed: (){},
                         icon: const Icon(Icons.close,size: 18,)),
                         Expanded(
                           child: Container(
                             height: kHeight(30),
                             child: Text(_cartController.cartItem[index].producCost,style: const TextStyle(fontSize: 18,color: Color(0xFF181725)),)),
                         ),
                       ]),
                     ),
                   ),
                   SizedBox(height: kHeight(30),),
                   Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                     height: kHeight(5),
                     color: const Color(0xFFE2E2E2),
                     ),                                     
                   SizedBox(height: kHeight(30),)
                 ],
               ),
             ),
           ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,),
              child: CustomButton(
                buttonText: "Go to CheckOut ",
                onPresseh: (){
                 // Get.to(OrderAcceptedScreen());
                showBottomSheet(
                  context: context,
                  builder: (context){
                    return Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Checkout",style: TextStyle(fontSize: 24,color: Color(0xFF181725)),),
                              IconButton(
                                onPressed: (){
                                  Get.back();
                                },
                              icon: const Icon(Icons.close,color: Color(0xFF181725),size: 24,))
                            ],
                          ),
                          SizedBox(height: kHeight(30),),
                          Container(
                            height: kHeight(2),
                            color: Colors.grey,
                          ),
                          SizedBox(height: kHeight(20),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Delivery",style: TextStyle(fontSize: 18,color:Color(0xFF7C7C7C)),),
                              Row(
                                children: [
                                  const Text("Select Method",style: TextStyle(fontSize: 16,color: Color(0xFF181725)),),
                                  SizedBox(width: kWidth(15),),
                                  IconButton(
                                    onPressed: (){},
                                  icon: const Icon(Icons.chevron_right,color: Color(0xFF181725),size: 16,))
                                ],
                              ),

                            ],
                          ),
                          SizedBox(height: kHeight(20),),
                          Container(
                            height: kHeight(2),
                            color: Colors.grey,
                          ),
                           SizedBox(height: kHeight(20),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Pament",style: TextStyle(fontSize: 18,color:Color(0xFF7C7C7C)),),
                              Row(
                                children: [
                                  const Text(" Method",style: TextStyle(fontSize: 16,color: Color(0xFF181725)),),
                                  SizedBox(width: kWidth(15),),
                                  IconButton(
                                    onPressed: (){},
                                  icon: const Icon(Icons.chevron_right,color: Color(0xFF181725),size: 16,))
                                ],
                              ),

                            ],
                          ),
                          SizedBox(height: kHeight(20),),
                          Container(
                            height: kHeight(2),
                            color: Colors.grey,
                          ),
                           SizedBox(height: kHeight(20),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Promo Code ",style: TextStyle(fontSize: 18,color:Color(0xFF7C7C7C)),),
                              Row(
                                children: [
                                  const Text("Pick Discount",style: TextStyle(fontSize: 16,color: Color(0xFF181725)),),
                                  SizedBox(width: kWidth(15),),
                                  IconButton(
                                    onPressed: (){},
                                  icon: const Icon(Icons.chevron_right,color: Color(0xFF181725),size: 16,))
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: kHeight(20),),
                          Container(
                            height: kHeight(2),
                            color: Colors.grey,
                          ),
                           SizedBox(height: kHeight(20),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Total Cost",style: TextStyle(fontSize: 18,color:Color(0xFF7C7C7C)),),
                              Row(
                                children: [
                                  const Text("\$13.97",style: TextStyle(fontSize: 16,color: Color(0xFF181725)),),
                                  SizedBox(width: kWidth(15),),
                                  IconButton(
                                    onPressed: (){},
                                  icon: const Icon(Icons.chevron_right,color: Color(0xFF181725),size: 16,))
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: kHeight(20),),
                          Container(
                            height: kHeight(2),
                            color: Colors.grey,
                          ),
                          SizedBox(height: kHeight(20),),
                          const Text("By Placing an order you agree to our",style: TextStyle(fontSize: 14,color: Color(0xFF7C7C7C)),),
                          RichText(
                            text:const TextSpan(
                              children: [
                                 TextSpan(
                                  text: "Terms ",
                                      style: TextStyle(fontSize: 14,color: Color(0xFF181725))
                                    ),
                                    TextSpan(
                                      text: " And ",style: TextStyle(fontSize: 14,color: Color(0xFF7C7C7C),), 
                                    ),
                                    TextSpan(
                                  text: " Conditions ",
                                      style: TextStyle(fontSize: 14,color: Color(0xFF181725))
                                    ),
                                 ]
                               )
                           ),
                          CustomButton(
                            buttonText: "Please Order",
                            onPresseh: (){},
                            color: const Color(0xFF53B175),
                            textColor: const Color(0xFFFFFFFF)),
                            
                        ],
                      ),
                    );
                  });
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