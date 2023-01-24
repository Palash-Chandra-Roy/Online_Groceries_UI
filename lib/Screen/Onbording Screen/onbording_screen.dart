import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_groceries_app/Screen/LogIn/LogIn_Screen/login_screen.dart';
import 'package:online_groceries_app/Screen/SinIn/SinIn%20Screen/sin_in_screen.dart';
import 'package:online_groceries_app/Widget/custom_button.dart';
import 'package:online_groceries_app/size_config.dart';

class OnbordingScreen extends StatelessWidget {
   OnbordingScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
          height: kHeight(896),
            decoration: const BoxDecoration(
              image:DecorationImage(image:AssetImage("assets/images/onbordingimage.png"),fit: BoxFit.cover),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: kHeight(354),),
                    Image.asset('assets/images/On-carrots.png',
                    height:56 ,
                    width: 46,),
                     SizedBox(height:kHeight(35)),
                    const Text("Welcome\n to our store ",style: TextStyle(fontSize: 48,color: Color(0xFFFFFFFF),fontWeight: FontWeight.bold),),
                     SizedBox(height: kHeight(19),),
                    const Text("Gar your groceries in as fast as one hour",style:TextStyle(fontSize: 16,color: Color(0xFFFFFFFF)),),
                    SizedBox(height: kHeight(40),),
                    CustomButton(
                      buttonText: 'Get Started',
                       onPresseh: (){
                        Get.to(LogInScreen());
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LogInScreen()));
                       },
                        color:const Color(0xFF53B175),
                         textColor: const Color(0xFFFFFFFF)),
                         SizedBox(height: kHeight(77),),
                         Center(
                           child: Container(height: kHeight(5),
                           width: kWidth(135),
                           color: Colors.grey,
                           ),
                         )
                         
                  ],
                  ),
              ),
           ),
      ),
     
    );
  }
}