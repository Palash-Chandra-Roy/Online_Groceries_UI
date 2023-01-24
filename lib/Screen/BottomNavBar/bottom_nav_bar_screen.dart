
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/Screen/BottomNavBar/BottomNavBar%20Controller/bottom_nav_bar_controller.dart';
import 'package:online_groceries_app/Screen/Cart/Cart%20Screen/cart_screen.dart';
import 'package:online_groceries_app/Screen/Favarurite/Favarurite%20Screen/Favarurite_screen.dart';
import 'package:online_groceries_app/Screen/Home/Home%20Screen/home_screen.dart';
import 'package:online_groceries_app/Screen/Profile/Profile%20Screen/profile_screen.dart';
import 'package:online_groceries_app/Screen/Search/Search%20Screen/search_screen.dart';
import 'package:online_groceries_app/Screen/Shop/Shop%20Screen/shop_screen.dart';
import 'package:online_groceries_app/size_config.dart';

class BottomNavBarScreen extends StatelessWidget {
   BottomNavBarScreen({super.key});

   final BottomNavBarController _bottomNavBarController =Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<BottomNavBarController>(builder: (_bottomNavBarController){
      return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: _bottomNavBarController.tabIndex.value,
              children: [
                 ShopScreen(),
                // HomeScreen(),
                SearchScreen(),
                CartScreen(),
                FavaruriteScreen(),
                ProfileScreen(),
            ],
            )
            ),
            bottomNavigationBar:Obx(()=>
            Container(
                height: 92,
               decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  color: Colors.white),
                child: BottomNavigationBar(
                  onTap: _bottomNavBarController.changeTabIndex,
                  currentIndex: _bottomNavBarController.tabIndex.value,
                  unselectedItemColor: const Color(0xFF000000),
                  backgroundColor:  Colors.white,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: const Color(0xFF53B175),
                  elevation: 0,
                  items: [
                    BottomNavigationBarItem(icon: Image.asset("assets/images/shop.png",color: const Color(0xFF000000),),label: "Shop"),
                    BottomNavigationBarItem(icon: Image.asset("assets/images/explore.png",color: const Color(0xFF000000),),label: "Explore"),
                    const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
                    const BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
                    const BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
                  ]),
              ),
            ),
        );
    });
  } 
}