import 'package:e_commerce_app14/controllers/home/home_controller.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/data/models/items_model.dart';
import 'package:e_commerce_app14/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItems extends GetView<HomeControllerImp> {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.builder(
        itemCount: controller.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Items(
            itemsModel: ItemsModel.fromJson(controller.items[index]),
          );
        },
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({super.key, required this.itemsModel});
  final ItemsModel itemsModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Image.network(
            "${AppLink.imageItems}/${itemsModel.itemsImage}",
            height: 120,
            width: 160,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          height: 140,
          width: 190,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
            top: 6,
            left: 20,
            child: Text(
              "${itemsModel.itemsName}",
              style: Styles.boldtextStyle16.copyWith(color: Colors.white),
            ))
      ],
    );
  }
}
