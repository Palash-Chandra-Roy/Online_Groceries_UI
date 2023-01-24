import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_groceries_app/size_config.dart';
import '../../Widget/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); 
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             SizedBox(height: kHeight(42),),
              Center(child: Image.asset("assets/images/carrot.png",)),
              SizedBox(height: kHeight(100),),
              const Text("Sign Up",style: TextStyle(fontSize: 26,color: Color(0xFF181725)),),
              SizedBox(height: kHeight(15),),
              const Text("Enter your cerdentials to continue",style: TextStyle(fontSize: 16,color: Color(0xFF7C7C7C)),),
              SizedBox(height: kHeight(40),),
              const Text('Username',style: TextStyle(fontSize: 16,color: Color(0xFF7C7C7C)),),
              SizedBox(height: kHeight(10),),
              TextFormField(
                keyboardType: TextInputType.name,
                obscureText: true,
                decoration:const InputDecoration(
                  labelText: "Afsan Hossin shuvo",                  
                ),
              ),
              const SizedBox(height: 30,),
              const Text('Email ',style: TextStyle(fontSize: 16,color: Color(0xFF7C7C7C)),),
              SizedBox(height: kHeight(10),),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration:const InputDecoration(
                  labelText: "imshuvo79@gmail.com",
                  suffixIcon: Icon(Icons.done,color: Color(0xFF53B175),)
                ),
              ),
              SizedBox(height: kHeight(30),),
              const Text('Password ',style: TextStyle(fontSize: 16,color: Color(0xFF7C7C7C)),),
              SizedBox(height: kHeight(10),),
              TextFormField(
                keyboardType: TextInputType.multiline,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "**********",
                  suffixIcon: Icon(Icons.visibility_off_outlined)
                ),
              ),
              SizedBox(height: kHeight(20),),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text:const TextSpan(
                    children: [
                      TextSpan(
                        text: "By Continuing you agree to your ",
                        style: TextStyle(fontSize: 14,color: Color(0xFF181725))
                      ),
                      TextSpan(
                        text: 'Terms of Service ',style: TextStyle(fontSize: 14,color: Color(0xFF53B175),),
                      ),
                       TextSpan(
                        text: "and ",
                        style: TextStyle(fontSize: 14,color: Color(0xFF181725))
                      ),
                       TextSpan(
                        text: 'Privacy of Policy ',style: TextStyle(fontSize: 14,color: Color(0xFF53B175),),
                      ),
                    ]
                  )
                  ),
                 ),
              SizedBox(height: kHeight(30),),
              CustomButton(
                buttonText: "Sign Up",
                onPresseh: (){}, 
                color: const Color(0xFF53B175), 
                textColor: const Color(0xFFFFFFFF)),
                SizedBox(height: kHeight(25),),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text:TextSpan(
                      children: [
                        const TextSpan(
                          text: "Already have an Account? ",
                          style: TextStyle(fontSize: 14,color: Color(0xFF181725))
                        ),
                        TextSpan(
                          text: "Singup",style: const TextStyle(fontSize: 14,color: Color(0xFF53B175),), 
                          recognizer: TapGestureRecognizer()
                          ..onTap=(){
                            Get.to(SignUpScreen());
                          })
                      ]
                  ) ),
                ),
                SizedBox(height: kHeight(194),),
               Center(
                 child: Container(
                  height: kHeight(5),
                  width: kWidth(135),
                  color: Colors.grey,
                 ),
               )
          ]),
          ),
          ),
    );
  }
}