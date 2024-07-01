import 'package:e_commerce_app14/controllers/home/home_controller.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/data/models/categories_model.dart';
import 'package:e_commerce_app14/link_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomeListCategories extends GetView<HomeControllerImp> {
  const CustomeListCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          return Categries(
            i: index,
            categoriesModel: CategoriesModel.fromJson(controller.categories[index]),);
        },
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class Categries extends GetView<HomeControllerImp> {
  const Categries( {super.key, required this.categoriesModel,required this.i,});
  final CategoriesModel categoriesModel;
  final int i;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(controller.categories , i , categoriesModel.categoriesId!);
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.kPrimaryColor4),
            width: 60,
            height: 60,
            child: SvgPicture.network(
                "${AppLink.imageCategories}/${categoriesModel.categoriesImage}"
                ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "${categoriesModel.categoriesName}",
            style: const TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }
}
