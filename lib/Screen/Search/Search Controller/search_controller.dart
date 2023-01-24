import 'package:get/get.dart';
import 'package:online_groceries_app/Screen/Search/Search%20Model/search_model.dart';

class SearchController extends GetxController{
  List<SearchModel> searchItem =[
    SearchModel(image: "assets/images/egg_chiken_red.png", productname: "Egg Chiken Red", productSystem: "4pcs , Price", productCost: "\$1.99"),
    SearchModel(image: "assets/images/egg_chiken_white.png", productname: "Egg Chiken White.png", productSystem: "180gm, Price", productCost: "\$1.50"),
    SearchModel(image: "assets/images/egg_posta.png", productname: "Egg Posta", productSystem: "30mg, Price", productCost: "\$15.99"),
    SearchModel(image: "assets/images/egg_nodle.png", productname: "Egg Noodles", productSystem: "2L, Price", productCost: "\$15.99"),
    SearchModel(image: "assets/images/mayonnaise-eggless.png", productname: "Maynnaise Eggless", productSystem: "500ml, Price", productCost: "\$4.99"),
    SearchModel(image: "assets/images/egg-noodles.png", productname: "Egg Noodles", productSystem: "350gm, Price", productCost: "\$4.99"),

  ];
} 