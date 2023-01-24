
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_groceries_app/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: kHeight(64),
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                     CircleAvatar(
                      child: Image.asset("assets/images/profile.png",
                      height: kHeight(60),
                      width: kWidth(60),
                      fit: BoxFit.cover,)),
                      SizedBox(width: kWidth(20),),
                      Column(
                        children: [
                          Row(
                            children: [
                              const Text("Afsar Hossain",style: TextStyle(fontSize: 18,color:Color(0xFF181725),fontWeight: FontWeight.bold),),
                              SizedBox(width: kWidth(10),),
                              IconButton(onPressed: (){},
                              icon: const Icon(Icons.edit,size: 15,color: Color(0xFF53B175),))
                            ],
                          ),
                          const Text("ImShuvo97@gmail.com",style: TextStyle(fontSize: 16,color: Color(0xFF7C7C7C),))
                        ],
                      )
            
                ]),
              ),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    Container(
                      height: kHeight(5),
                      color: const Color(0xFFE2E2E2),
                       ),
                    ListTile(
                      leading: SizedBox(
                        height: kHeight(20),
                        width: kWidth(18),
                        child: Image.asset("assets/images/orders.png",color: const Color(0xFF181725),)),
                      title: const Text("Orders",style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.chevron_right,size: 18,color: Color(0xFF181725),))
                    ),
                    Container(
                      height: kHeight(5),
                      color: const Color(0xFFE2E2E2),
                       ),
                    ListTile(
                      leading:SizedBox(
                         height: kHeight(20),
                         width: kWidth(18),
                        child: Image.asset("assets/images/details.png",color: const Color(0xFF181725),)),
                      title: const Text("My Details",style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.chevron_right,size: 18,color: Color(0xFF181725),))
                    ),
                    Container(
                      height: kHeight(5),
                      color: const Color(0xFFE2E2E2),
                       ),
                    ListTile(
                      leading: const Icon(Icons.location_on,size: 18,color: Color(0xFF181725),),
                      title: const Text("Dalivery Address",style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.chevron_right,size: 18,color: Color(0xFF181725),))
                    ),
                    Container(
                      height: kHeight(5),
                      color: const Color(0xFFE2E2E2),
                       ),
                    ListTile(
                      leading:  SizedBox(
                         height: kHeight(20),
                        width: kWidth(18),
                        child: Image.asset("assets/images/peyment.png",color: const Color(0xFF181725),)),
                      title: const Text("Peyment Methods",style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.chevron_right,size: 18,color: Color(0xFF181725),))
                    ),
                    Container(
                      height: kHeight(5),
                      color: const Color(0xFFE2E2E2),
                       ),
                    ListTile(
                      leading:  SizedBox(
                         height: kHeight(20),
                        width: kWidth(18),
                        child: Image.asset("assets/images/promo.png",color: const Color(0xFF181725),)),
                      title: const Text("Promo Cart",style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.chevron_right,size: 18,color: Color(0xFF181725),))
                    ),
                    Container(
                      height: kHeight(5),
                      color: const Color(0xFFE2E2E2),
                       ),
                    ListTile(
                      leading: const Icon(Icons.notifications,size: 18,color: Color(0xFF181725),),
                      title: const Text("Notification",style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.chevron_right,size: 18,color: Color(0xFF181725),))
                    ),
                    Container(
                      height: kHeight(5),
                      color: const Color(0xFFE2E2E2),
                       ),
                    ListTile(
                      leading: const Icon(Icons.help,size: 18,color: Color(0xFF181725),),
                      title: const Text("Help",style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.chevron_right,size: 18,color: Color(0xFF181725),))
                    ),
                    Container(
                      height: kHeight(5),
                      color: const Color(0xFFE2E2E2),
                       ),
                    ListTile(
                      leading:const Icon(Icons.error,size: 18,color: Color(0xFF181725),),
                      title: const Text("About",style: TextStyle(fontSize: 18,color: Color(0xFF181725),fontWeight: FontWeight.bold),),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.chevron_right,size: 18,color: Color(0xFF181725),))
                    ),
                    Container(
                      height: kHeight(5),
                      color: const Color(0xFFE2E2E2),
                       ),
                       SizedBox(height: kHeight(51),),
                       SizedBox(
                        height: kHeight(67),
                        width: kWidth(364),
                         child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                             onSurface: Colors.red,
                            elevation: 0,
                            primary: const Color(0xFFF2F3F2),
                            onPrimary: const Color(0xFFF2F3F2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children:const [
                                     Icon(Icons.login,color: Color(0xFF53B175),),
                                    Center(
                                      child: Text(
                                        "Log Out",style: TextStyle(fontSize: 16, color: Color(0xFF53B175)),
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: (){}
                                ),
                       )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}