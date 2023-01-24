import 'package:get/get.dart';
import 'package:online_groceries_app/Screen/Beverages/Beverages%20Model/beverages_model.dart';

class BeveragesController extends GetxController{

  List<BeveragesModel> beveragesItem= [
    BeveragesModel(images: "assets/images/dirt_coke.png", productName: "Dirt Coke", productSystem: "355ml, Price", productCost: "\$1.99"),
    BeveragesModel(images: "assets/images/sprite_can.png", productName: "Sprite Can", productSystem: "325ml, Price ", productCost: "\$1.50"),
    BeveragesModel(images: "assets/images/apple-grape-juice.png", productName: "Apple & Grape juice", productSystem: "2L , Price", productCost: "\$15.99"),
    BeveragesModel(images: "assets/images/orenge_juice.png", productName: "Orenge Juice", productSystem: "2L, Price", productCost: "\$15.99"),
    BeveragesModel(images: "assets/images/cokacola_can.png", productName: "Coka Cola Can ", productSystem: "325ml, Price", productCost: "\$4.99"),
    BeveragesModel(images: "assets/images/pepsi_can.png", productName: "Pepsi Can", productSystem: "330ml , Price ", productCost: "\4.99")
  ];
}