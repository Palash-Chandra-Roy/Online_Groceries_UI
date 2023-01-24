import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_groceries_app/Widget/custom_button.dart';
import 'package:online_groceries_app/size_config.dart';

class SinInScreen extends StatelessWidget {
  const SinInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: kHeight(425),
            decoration: const BoxDecoration(
              image:DecorationImage(
                image: AssetImage("assets/images/sinin_banner.png"),
                fit: BoxFit.cover)
                )
              ),
              Container(
                 padding: const EdgeInsets.symmetric(horizontal: 20,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Get your geoceries \n with nectar",style: TextStyle(fontSize: 26,color: Color(0xFF030303)),),
                    SizedBox(height: kHeight(30),),
                    TextFormField(
                      keyboardType: TextInputType.number,
                     // textInputAction: TextInputAction.none,
                      decoration: InputDecoration(
                        labelText: "Enter Number ",
                       // border: InputBorder.none,
                        prefixIcon:Row(
                             mainAxisSize: MainAxisSize.min,
                            children: [
                              const Image(image: AssetImage("assets/images/flg.png")),
                              SizedBox(width: kWidth(12),),
                              const Text("+880 ",style: TextStyle(fontSize: 18,color: Color(0xFF030303)),) ,
                          ]),
                      ),
                    ) ,
                    SizedBox(height: kHeight(40),),
                    const Center(
                      child: Text("Or connect your sosial media",style: TextStyle(fontSize: 14,color: Color(0xFF828282)),),
                      ),
                      SizedBox(height: kHeight(37),),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize: const Size(364, 67),
                        maximumSize: const Size(364, 67),
                           shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19))),
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Image(image: AssetImage("assets/images/google.png"),
                          height: 24,
                          width: 24,),
                             Text(
                           "Continue with Google ",
                           style: TextStyle(fontSize: 16, color:Color(0xFFFFFFFF) ),
                           ),
                        ],
                      
                     ),
                        onPressed: (){}),
                      ),
                        SizedBox(height: kHeight(20),),
                       Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize: const Size(364, 67),
                        maximumSize: const Size(364, 67),
                           shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19))),
                            
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Image(image: AssetImage("assets/images/facebook.png"),
                          height: 24,
                          width: 24,),
                             Text(
                           "Continue with Facebook ",
                           style: TextStyle(fontSize: 16, color:Color(0xFFFFFFFF) ),
                           ),
                        ],
                        
                     ),
                        onPressed: (){}),
                      ),
                      SizedBox(height: kHeight(77),),
                      Center(
                        child: Container(
                          height: kHeight(5),
                          width: kWidth(134),
                          color: const Color(0xFF181725)                    ),
                      ),
                      SizedBox(height: kHeight(10),)
                ]),
              )
        ]),
      ),
    );
  }
}