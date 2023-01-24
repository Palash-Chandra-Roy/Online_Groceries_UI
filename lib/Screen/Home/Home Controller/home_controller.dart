import 'package:get/get.dart';
import 'package:online_groceries_app/Screen/Home/Home%20Model/home_model.dart';

class HomeController extends GetxController{


List<HomeModel> item = [
  HomeModel(image: "assets/images/bannena.png",producName:"Organic Bananas",producSrevice:"7pcs, Priceg",producCost: "\$4.99"),
  HomeModel(image: "assets/images/apple.png", producName: "Red Apple", producSrevice: "1kg, Priceg", producCost:" \$4.99"),
  HomeModel(image: "assets/images/carrot.png", producName: "Carrot", producSrevice: "1kg, Priceg", producCost: "\$4.99"),
  HomeModel(image: "assets/images/pngfuel.png", producName: "Pngfuel", producSrevice: "1kg, Priceg", producCost:"\$4.99"),
];

List<HomeModel> bestItem=[
HomeModel(image: "assets/images/apple.png", producName: "Red Apple", producSrevice: "1kg, Priceg", producCost:" \$4.99"),
 HomeModel(image: "assets/images/pngfuel.png", producName: "Pngfuel", producSrevice: "1kg, Priceg", producCost:"\$4.99"),
 HomeModel(image: "assets/images/carrot.png", producName: "Carrot", producSrevice: "1kg, Priceg", producCost: "\$4.99"),
 HomeModel(image: "assets/images/bannena.png",producName:"Organic Bananas",producSrevice:"7pcs, Priceg",producCost: "\$4.99"),
 
  ];
  List<HomeModel> groceriesItem=[
    HomeModel(image: "assets/images/pulses.png", producName: "Pulses", producSrevice: "", producCost:""),
    HomeModel(image: "assets/images/rice.png", producName: "Rice", producSrevice: "", producCost:""),
  ];

  List<HomeModel> groceriesItems=[
    HomeModel(image: "assets/images/beef_bone.png", producName: "Beef Bone", producSrevice: "1kg, Priceg", producCost:"\$4.99"),
    HomeModel(image: "assets/images/chicken.png", producName: "Broiler Chicken", producSrevice: "1kg, Priceg", producCost:"\$4.99"),
    HomeModel(image: "assets/images/mart&fish.png", producName: "Mart & Frish", producSrevice: "1kg, Priceg", producCost:"\$4.99"),
    HomeModel(image: "assets/images/bakery&snacks.png", producName: "Bakery & Snacks", producSrevice: "1kg, Priceg", producCost:"\$4.99"),
    HomeModel(image: "assets/images/cooking_oil&ghee.png", producName: "Cooking Oil & Ghee", producSrevice: "1kg, Priceg", producCost:"\$4.99"),
    HomeModel(image: "assets/images/frash_furits&vegetoble.png", producName: "Frash Furits &Vegetable", producSrevice: "1kg, Priceg", producCost:"\$4.99"),
 
  ];
}



