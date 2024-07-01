import 'package:e_commerce_app14/controllers/itemsController/items_controller.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/data/models/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeListCategoriesItems extends GetView<ItemsControllerImp> {
  const CustomeListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Container(
      height: 30,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 8,
        ),
        itemBuilder: (context, index) {
          return Categries(
            i: index,
            categoriesModel:
                CategoriesModel.fromJson(controller.categoriesInfo[index]),
          );
        },
        itemCount: controller.categoriesInfo.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class Categries extends GetView<ItemsControllerImp> {
  const Categries( {super.key,required this.i, required this.categoriesModel});
  final CategoriesModel categoriesModel;
  final int i;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap: () {
          controller.changeCat(i);
        },
        child: GetBuilder<ItemsControllerImp>(builder:(controller) => Container(
          decoration: controller.selectedCat==i? BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.kPrimaryColor4) : null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
            child: Text(
              "${categoriesModel.categoriesName}",
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),)
      );
  }
}
