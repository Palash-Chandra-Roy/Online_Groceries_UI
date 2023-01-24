import 'package:get/get.dart';
import 'package:online_groceries_app/Screen/Cart/Cart%20Model/cart_model.dart';

class CartController extends GetxController{
  List<CartModel> cartItem =[
    CartModel(image: "assets/images/apple.png", producName: "Bell Peper Red", productSystem: "1kg , Price", producCost: "\$4.99"),
    CartModel(image: "assets/images/egg_chiken_red.png", producName: "Egg Chiken Red", productSystem: "4pcs , Price", producCost: "\$1.99"),
    CartModel(image: "assets/images/bannena.png", producName: "Organic Bananas", productSystem: "12kg , Price", producCost: "\$3.00"),
    CartModel(image: "assets/images/pngfuel.png", producName: "Ginger", productSystem: "250gm, Price", producCost: "\$2.99"), 
  ];

}