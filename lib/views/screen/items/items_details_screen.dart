import 'package:e_commerce_app14/controllers/itemsController/items_details_controller.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/link_api.dart';
import 'package:e_commerce_app14/views/widgets/itemsWidgets/custom_text_in_itemdatails.dart';
import 'package:e_commerce_app14/views/widgets/itemsWidgets/price_and_count_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsDetailsScreen extends GetView<ItemsDetailsControllerImp> {
  const ItemsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsDetailsControllerImp());
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 15),
        decoration: BoxDecoration(
          color: AppColor.kPrimaryColor3,
          borderRadius: BorderRadius.circular(10)
        ),
        height: 50,
        child: MaterialButton(
          onPressed: (){} , 
          child: Text("Add To Cart" , style: Styles.boldtextStyle16.copyWith(color: Colors.white),),
          
          ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
              height: 200,
              decoration: const BoxDecoration(
                color: AppColor.kPrimaryColor3,
               borderRadius: BorderRadiusDirectional.only(bottomStart: Radius.circular(23) , bottomEnd: Radius.circular(23)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Container(
                  height: 280,
                  child: Hero(
                    tag: controller.itemsModel.itemsImage!,
                    child: Image.network(AppLink.imageItems+"/" + controller.itemsModel.itemsImage! , fit: BoxFit.fill,)),
                ),
              ),
            ),
        ]
        ),
       CustomTextInItemDetails(text: "${controller.itemsModel.itemsName}", textStyle: Styles.boldtextStyle24),
       const SizedBox(height: 10,),
        PriceAndCountItems(price: "${controller.itemsModel.itemsPrice}", count: "4", onPressed: (){}, onRemoved: (){}),
        const SizedBox(height: 10,),
        CustomTextInItemDetails(text: "${controller.itemsModel.itemsDesc}", textStyle: Styles.boldtextStyle16.copyWith(color: const Color.fromARGB(255, 149, 143, 143))),
        const SizedBox(height: 20,),
        const CustomTextInItemDetails(text: "Color", textStyle: Styles.boldtextStyle18),
        const SizedBox(height: 6,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              ...List.generate(controller.subItems.length, (index) => Container(
                margin: const EdgeInsets.only(right: 9),
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  color: controller.subItems[index]['active']=='1' ? AppColor.kPrimaryColor3 : Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor3) , 
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("${controller.subItems[index]['name']}" , style: Styles.boldtextStyle14.copyWith(color: controller.subItems[index]['active']=='1' ? Colors.white : Colors.black), )),
              ),),
            ],
          ),
        )
        ],
      ),
    );
  }
}