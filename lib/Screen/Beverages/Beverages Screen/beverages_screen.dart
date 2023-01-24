import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_groceries_app/Screen/Beverages/Beverages%20Controller/beverages_controller.dart';
import 'package:online_groceries_app/size_config.dart';

class BeverageScreen extends StatelessWidget {
   BeverageScreen({super.key});

   final BeveragesController _beveragesController =Get.put(BeveragesController());
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Color(0xFF181725),),
        elevation: 0,
        title: const Text("Beverages ",style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios,color: Color(0xFF181725),size: 18,)),
        actions: [
          IconButton(
            onPressed: (){

            },
            icon:Image.asset("assets/images/beveragesI_iconbar.png"))
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,),
        child: GridView.builder(
          itemCount: _beveragesController.beveragesItem.length,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/5,
            mainAxisSpacing: 18.0,
            crossAxisSpacing: 18.0
            ), 
          itemBuilder: (BuildContext context, index) =>
          Container(
            height: kHeight(250),
            width: kWidth(175),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color:const Color(0xFFE2E2E2),width: 4),
              borderRadius:BorderRadius.circular(18)
            ),
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(_beveragesController.beveragesItem[index].images,
                        fit: BoxFit.cover,height: kHeight(90),width: kWidth(45),),
                      ),
                      SizedBox(height: kHeight(20),),
                       Text(_beveragesController.beveragesItem[index].productName,style: const TextStyle(fontSize: 18,color: Color(0xFF181725)),),
                      SizedBox(height: kHeight(5)),
                      Text(_beveragesController.beveragesItem[index].productSystem,style: const TextStyle(fontSize: 14,color: Color(0xFF7C7C7C)),),
                      SizedBox(height: kHeight(30),),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_beveragesController.beveragesItem[index].productCost,style: const TextStyle(fontSize: 18,color: Color(0xFF181725)),),
                        //  SizedBox(width: kWidth(46),),
                          Container(
                            height: kHeight(45),
                            width: kWidth(45),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xFF53B175),
                            ),
                            child: IconButton(
                              onPressed: (){},
                               icon: const Icon(Icons.add,color: Color(0xFFFFFFFF),size: 17,)),
                          )
                        ],
                      ),
                   ]),
          ) 
        ),
      ),
    );
  }
}