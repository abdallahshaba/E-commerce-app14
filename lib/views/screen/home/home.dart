import 'package:e_commerce_app14/controllers/home/home_controller.dart';
import 'package:e_commerce_app14/core/class/handling_data_view.dart';
import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/views/widgets/home/custom_appBar_home.dart';
import 'package:e_commerce_app14/views/widgets/home/custom_card_home.dart';
import 'package:e_commerce_app14/views/widgets/home/custom_list_categories.dart';
import 'package:e_commerce_app14/views/widgets/home/list_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> {
  TextEditingController mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return  GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: ListView(
                children: [
                 const SizedBox(
                    height: 20,
                  ),
                  CustomAppBarHome(
                    hintText: "Find Product",
                    mycontroller: mycontroller,
                    iconData: Icons.search,
                    labeltext: "Search",
                    onPressedFavorite: () {
                      Get.toNamed(AppRouts.myFavorite);
                    },
                    onPressedSearch: (){},
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                 const CustomCardHome(title: "Summer Surprise", subtitle: "Cashback 20%"),
                 const SizedBox(
                    height: 15,
                  ),
                  const Text("Categories" , style: Styles.boldtextStyle20,),
                  const SizedBox(height: 10,),
                  const CustomeListCategories(),
                  const SizedBox(height: 15,),
                  const Text("Product for you" , style: Styles.boldtextStyle20,),
                  const SizedBox(height: 10,),
                  const ListItems(),
                  const Text("Offers" , style: Styles.boldtextStyle20,),
                  const SizedBox(height: 10,),
                  const ListItems(),
                ],
              )),
        ),
      );
  }
}
