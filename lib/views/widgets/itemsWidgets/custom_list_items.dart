import 'package:e_commerce_app14/controllers/itemsController/items_controller.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/data/models/items_model.dart';
import 'package:e_commerce_app14/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  const CustomListItems({super.key, required this.itemsModel});
  final ItemsModel itemsModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItemsDetails(itemsModel);
      },
      child: Card(
        color: AppColor.kPrimaryColor4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 135,
                  width: 200,
                  child: Hero(
                      tag: itemsModel.itemsImage!,
                      child: Image.network(
                        AppLink.imageItems + "/" + itemsModel.itemsImage!,
                        fit: BoxFit.fill,
                      ))),
              Text(
                "${itemsModel.itemsName}",
                style: Styles.boldtextStyle16,
              ),
              Text(
                "${itemsModel.categoriesName} ",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${itemsModel.itemsPrice} \$",
                      style: Styles.boldtextStyle18
                          .copyWith(color: AppColor.kPrimaryColor3),
                    ),
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: AppColor.kPrimaryColor3,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
