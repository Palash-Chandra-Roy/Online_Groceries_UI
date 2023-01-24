import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Screen/Cart/Cart%20Screen/cart_screen.dart';
import 'package:online_groceries_app/Screen/Search/Search%20Screen/search_screen.dart';
import 'package:online_groceries_app/Widget/custom_button.dart';
import 'package:online_groceries_app/size_config.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Color(0xFF181725),),
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios,color: Color(0xFF181725),size: 18,)),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.ios_share,size: 18,color:Color(0xFF181725)))
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kHeight(27),),
              Center(child: Image.asset("assets/images/apples.png",
              height: kHeight(200),
              width: kWidth(300),
              fit: BoxFit.cover,),
              ),
              SizedBox(height: kHeight(100),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Natural Red Apple",style: TextStyle(fontSize: 24,color: Color(0xFF181725)),),
                  IconButton(
                    onPressed: (){

                    },
                   icon: const Icon(Icons.favorite,size: 24,color: Color(0xFF7C7C7C),))
                ],
              ),
              SizedBox(height: kHeight(10),),
              const Text("1kg, Price",style: TextStyle(fontSize: 14,color: Color(0xFF7C7C7C)),),
              SizedBox(height: kHeight(30),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: kHeight(45),
                    width: kWidth(130),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                         Container(
                          height: kHeight(45),
                          width: kWidth(40),
                           child: IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.remove,size: 18,color: Color(0xFFB3B3B3),)),
                         ),
                        Container(
                          height: kHeight(45),
                          width: kWidth(45),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: const Color(0xFFB3B3B3))
                          ),
                          child: const Center(
                            child: Text("1",style: TextStyle(fontSize: 18,color: Color(0xFF181725)),)),
                        ),
                         Container(
                          height: kHeight(45),
                          width: kWidth(40),
                           child: IconButton(
                              onPressed: (){
                                Get.to(CartScreen());
                              },
                              icon: const Icon(Icons.add,size: 18,color: Color(0xFF53B175),)),
                         ),
                    ]),
                  ),
                  const Text("\$4.99",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF181725)),),
                ],
              ),
              SizedBox(height: kHeight(30),),
              Container(
                height: kHeight(5),
                color: const Color(0xFFE2E2E2),
              ),
              SizedBox(height: kHeight(18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Product Details",style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.keyboard_arrow_down,color: Color(0xFF181725),size: 18,))
                ],
              ),
              SizedBox(height: kHeight(9),),
              const Text("Apples Are Nutritious.Apples May Be Good For Weight loss.Apples May Be Good For Your Heart.As Part Of A Healtful And Variad Diet",
              style:TextStyle(fontSize: 13,color: Color(0xFF7C7C7C)),),
              SizedBox(height: kHeight(19),),
               Container(
                height: kHeight(5),
                color: const Color(0xFFE2E2E2),
              ),
              SizedBox(height: kHeight(20),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Text('Nutritions',style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: kHeight(20),
                        width: kWidth(34),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFE5E5E5),
                        ),
                        child:const Center(child: Text("100 gr",style: TextStyle(fontSize: 9,color: Color(0xFF7C7C7C)),)),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.keyboard_arrow_right,size: 18,color: Color(0xFF181725),))
                    ],
                   ),
                ],
              ),
             SizedBox(height: kHeight(16),),
               Container(
                height: kHeight(5),
                color: const Color(0xFFE2E2E2),
              ),
              SizedBox(height: kHeight(18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Review',style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        itemCount: 5,
                        initialRating: 5,
                        itemSize: 14,
                        direction: Axis.horizontal,
                        itemBuilder:(context, index) =>const Icon(Icons.star,color: Color(0xFFF3603F),), 
                        onRatingUpdate: (value ) { 
                          return; 
                         },),
                         IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.keyboard_arrow_right,size: 18,color: Color(0xFF181725),))
                    ],
                  )
                ],
              ),
              SizedBox(height: kHeight(20),),
              Center(
                child: CustomButton(
                  buttonText: "Add To Basket",
                  onPresseh: (){
                    Get.to(SearchScreen());
                  },
                  color: const Color(0xFF53B175),
                  textColor:  const Color(0xFFFFFFFFF)),
              ),
                const SizedBox(height: 25,),
                Center(
                  child: Container(
                    height: kHeight(5),
                    width: kWidth(134),
                    color: const Color(0xFFE5E5E5),
                  ),
                )
          ]),
          )),
    );
  }
}