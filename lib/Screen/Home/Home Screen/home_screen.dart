import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Screen/Beverages/Beverages%20Screen/beverages_screen.dart';
import 'package:online_groceries_app/Screen/BottomNavBar/bottom_nav_bar_screen.dart';
import 'package:online_groceries_app/Screen/Explore/Explore%20Screen/explore_screen.dart';
import 'package:online_groceries_app/Screen/Home/Home%20Controller/home_controller.dart';
import 'package:online_groceries_app/Screen/Product%20Detail/Product%20Deatil%20Screen/product_detail_screen.dart';
import 'package:online_groceries_app/size_config.dart';



class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
   
 final HomeController _homeController =Get.put(HomeController());

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
              SizedBox(height: kHeight(23),),
               Center(child: Image.asset("assets/images/carrot.png",)),
               SizedBox(height: kHeight(8),),
               Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_on,size: 18,),
                  SizedBox(width: kWidth(8),),
                  const Text("Dhaka , Banassre ",style: TextStyle(fontSize: 18, color: Color(0xFF4C4F4D)),)
                ],
               ),
               SizedBox(height: kHeight(20),),
               TextFormField(
                // style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search,size: 18,color: Color(0xFF181B19),),
                  labelText: "Search Store",
                  fillColor: Colors.grey,
                  filled: true,
                 enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                 )
                ),
               ),
               SizedBox(height: kHeight(20),), 
               Container(
                height: kHeight(115),
                width: kWidth(367),
                child: Card(
                 child: Image.asset("assets/images/homebanner.png",
                 fit: BoxFit.cover,),
                ),
               ),
               SizedBox(height: kHeight(30),),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Text('Exclusive Offer',style: TextStyle(fontSize: 24,color: Color(0xFF181725)),),
                TextButton(
                  onPressed: (){
                    Get.to(ProductDetailScreen());
                  },
                   child: const Text('See all ',style: TextStyle(fontSize: 16,color: Color(0xFF53B175)),)
                   ),
                ],
               ),
               SizedBox(height: kHeight(20),),
               Container(
                height: kHeight(300),
                
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _homeController.item.length,
                  itemBuilder:(context, index) => Card(
                   child: Padding(
                     padding: const EdgeInsets.all(15),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(_homeController.item[index].image,
                          fit: BoxFit.cover,height: kHeight(80),width: kWidth(100),),
                        ),
                        SizedBox(height: kHeight(25),),
                        Text(_homeController.item[index].producName,style: const TextStyle(fontSize: 18,color: Color(0xFF181725)),),
                        SizedBox(height: kHeight(5)),
                        Text(_homeController.item[index].producSrevice,style: const TextStyle(fontSize: 14,color: Color(0xFF7C7C7C)),),
                        SizedBox(height: kHeight(30),),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_homeController.item[index].producCost,style: const TextStyle(fontSize: 18,color: Color(0xFF181725)),),
                           SizedBox(width: kWidth(46),),
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
                        )
                     ]),
                   ),
                   ))
               ),
               SizedBox(height: kHeight(30),), 
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Text('Best Selling ',style: TextStyle(fontSize: 24,color: Color(0xFF181725)),),
                   TextButton(
                    onPressed: (){
                      Get.to(ExploreScreen());
                    },
                     child: const Text('See all ',style: TextStyle(fontSize: 16,color: Color(0xFF53B175)),),
                  )
                ],
               ),
               SizedBox(height: kHeight(20),),
                Container(
                height: kHeight(300),
                
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _homeController.item.length,
                  itemBuilder:(context, index) => Card(
                   child: Padding(
                     padding: const EdgeInsets.all(15),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(_homeController.bestItem[index].image,
                          fit: BoxFit.cover,height: kHeight(80),width: kWidth(100),),
                        ),
                        SizedBox(height: kHeight(25),),
                        Text(_homeController.bestItem[index].producName,style: const TextStyle(fontSize: 18,color: Color(0xFF181725)),),
                        SizedBox(height: kHeight(5)),
                        Text(_homeController.bestItem[index].producSrevice,style: const TextStyle(fontSize: 14,color: Color(0xFF7C7C7C)),),
                        SizedBox(height: kHeight(30),),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_homeController.bestItem[index].producCost,style: const TextStyle(fontSize: 18,color: Color(0xFF181725)),),
                           SizedBox(width: kWidth(46),),
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
                        )
                     ]),
                   ),
                   ))
               ),
               SizedBox(height: kHeight(30),), 
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Groceries',style: TextStyle(fontSize: 24,color: Color(0xFF181725)),),
                  TextButton(
                    onPressed: (){
                      Get.to(BeverageScreen());
                    },
                     child: const Text('See all ',style: TextStyle(fontSize: 16,color: Color(0xFF53B175)),),
                     ),
                ],
               ),
               SizedBox(height: kHeight(20),),
               Container(
                height: kHeight(105),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _homeController.groceriesItem.length,
                  itemBuilder: (context, index) => Card(
                    child: Container(
                      width: kWidth(248),
                       padding: const EdgeInsets.all(10),
                      decoration:const BoxDecoration(
                    //borderRadius: BorderRadius.circular(18),
                       color: Color(0xFFF8A44C)
                            ),
                      child: Row(
                        children: [
                          Image.asset(_homeController.groceriesItem[index].image,
                          fit: BoxFit.cover,height: kHeight(71),width: kWidth(71),),
                          SizedBox(width: kWidth(15),),
                          Text(_homeController.groceriesItem[index].producName,style: TextStyle(fontSize: 20,color: Color(0xFF3E423F)),)
                      ]),
                    ),
                  ))
                  ),
               Container(
                height: kHeight(300),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _homeController.groceriesItems.length,
                  itemBuilder:(context, index) => Card(
                   child: Padding(
                     padding: const EdgeInsets.all(15),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(_homeController.groceriesItems[index].image,
                          fit: BoxFit.cover,height: kHeight(80),width: kWidth(100),),
                        ),
                        SizedBox(height: kHeight(25),),
                        Text(_homeController.groceriesItems[index].producName,style: const TextStyle(fontSize: 18,color: Color(0xFF181725)),),
                        SizedBox(height: kHeight(5)),
                        Text(_homeController.groceriesItems[index].producSrevice,style: const TextStyle(fontSize: 14,color: Color(0xFF7C7C7C)),),
                        SizedBox(height: kHeight(30),),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_homeController.groceriesItems[index].producCost,style: const TextStyle(fontSize: 18,color: Color(0xFF181725)),),
                           SizedBox(width: kWidth(46),),
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
                        )
                     ]),
                   ),
                   ))
               ),
          ]),
          )
      ),
   bottomNavigationBar: BottomNavBarScreen(),
    );
  }
}