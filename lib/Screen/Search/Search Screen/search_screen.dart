import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_groceries_app/Screen/Search/Search%20Controller/search_controller.dart';
import 'package:online_groceries_app/size_config.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});

  final SearchController _searchController =Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme:const IconThemeData(color: Color(0xFF181725)),
        title: TextFormField(
         decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search,size: 18,color: Color(0xFF181B19),),
                  labelText: "Search",
                  fillColor: Colors.grey,
                  suffixIcon: const Icon(Icons.cancel,size: 18,color: Color(0xFF181B19)),
                  filled: true,
                 enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                 )
                ),
          ),
        actions: [
          IconButton(
            onPressed: (){
            },
            icon:Image.asset("assets/images/beveragesI_iconbar.png"))
      ]),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
        child: GridView.builder(
          itemCount: _searchController.searchItem.length,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2/4,
            mainAxisSpacing: 18.0,
            crossAxisSpacing: 18.0
            ), 
          itemBuilder: (BuildContext context, index) =>
          Container(
            height: kHeight(248),
            width: kWidth(175),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(color:const Color(0xFFE2E2E2),width: 4),
              borderRadius:BorderRadius.circular(18)
            ),
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(_searchController.searchItem[index].image,
                        fit: BoxFit.cover,height: kHeight(121),width: kWidth(121),),
                      ),
                      SizedBox(height: kHeight(20),),
                       Text(_searchController.searchItem[index].productname,style: const TextStyle(fontSize: 18,color: Color(0xFF181725)),),
                      SizedBox(height: kHeight(5)),
                      Text(_searchController.searchItem[index].productSystem,style: const TextStyle(fontSize: 14,color: Color(0xFF7C7C7C)),),
                      SizedBox(height: kHeight(30),),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_searchController.searchItem[index].productCost,style: const TextStyle(fontSize: 18,color: Color(0xFF181725)),),
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