import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Screen/Home/Home%20Screen/home_screen.dart';
import 'package:online_groceries_app/Widget/custom_button.dart';
import 'package:online_groceries_app/size_config.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

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
              const Text("Loging ",style: TextStyle(fontSize: 26,color: Color(0xFF181725)),),
              SizedBox(height: kHeight(15),),
              const Text("Enter your Email & Password",style: TextStyle(fontSize: 16,color: Color(0xFF7C7C7C)),),
              SizedBox(height: kHeight(40),),
              const Text('Email: ',style: TextStyle(fontSize: 16,color: Color(0xFF7C7C7C)),),
              SizedBox(height: kHeight(10),),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration:const InputDecoration(
                  labelText: "imshuvo79@gmail.com",
                ),
              ),
              SizedBox(height: kHeight(30),),
              const Text('Password: ',style: TextStyle(fontSize: 16,color: Color(0xFF7C7C7C)),),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  TextButton(onPressed: (){},
                   child: const Text("Forget Password",style: TextStyle(fontSize: 14,color: Color(0xFF181725)),))
                ],
              ),
              SizedBox(height: kHeight(30),),
              Center(
                child: CustomButton(
                  buttonText: "LogIn",
                  onPresseh: (){
                    Get.to(HomeScreen());
                  }, 
                  color: const Color(0xFF53B175), 
                  textColor: const Color(0xFFFFFFFF)),
              ),
                SizedBox(height: kHeight(25),),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text:TextSpan(
                      children: [
                        const TextSpan(
                          text: "Don't have an Account? ",
                          style: TextStyle(fontSize: 14,color: Color(0xFF181725))
                        ),
                        TextSpan(
                          text: "Sing Up",style: const TextStyle(fontSize: 14,color: Color(0xFF53B175),), 
                          recognizer: TapGestureRecognizer()
                          ..onTap=(){
                            Get.to(LogInScreen());
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
          ],),
        )),
    );
  }
}