import 'package:e_commerce_app14/controllers/itemsController/favorite_controller.dart';
import 'package:e_commerce_app14/controllers/itemsController/items_controller.dart';
import 'package:e_commerce_app14/core/class/handling_data_view.dart';
import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/data/models/items_model.dart';
import 'package:e_commerce_app14/views/widgets/home/custom_appBar_home.dart';
import 'package:e_commerce_app14/views/widgets/itemsWidgets/custom_list_categories_items.dart';
import 'package:e_commerce_app14/views/widgets/itemsWidgets/custom_card_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});
  @override
  Widget build(BuildContext context) {
  FavoriteController controller2 = Get.put(FavoriteController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppBarHome(
                hintText: "Find Product",
                labeltext: "Search",
                iconData: Icons.search,
                onPressedFavorite: () {
                  Get.toNamed(AppRouts.myFavorite);
                },
                ),
            const SizedBox(
              height: 20,
            ),
            const CustomeListCategoriesItems(),
            const SizedBox(
              height: 15,
            ),
            GetBuilder<ItemsControllerImp>(
                builder: (controller) => HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (BuildContext context, index) {
                          controller2.isFavorite[controller.data[index]['items_id']] = controller.data[index]['favorite'];
                          return CustomItemsCard(
                              itemsModel:ItemsModel.fromJson(controller.data[index]));
                        })))
          ],
        ),
      ),
    );
  }
}
