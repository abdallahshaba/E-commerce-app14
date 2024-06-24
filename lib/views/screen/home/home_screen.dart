import 'package:e_commerce_app14/controllers/home/home_controller.dart';
import 'package:e_commerce_app14/core/class/handling_data_view.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/link_api.dart';
import 'package:e_commerce_app14/views/widgets/home/custom_appBar_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
        body: GetBuilder<HomeControllerImp>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
            child: ListView(
          children: [
            SizedBox(height: 20,),
            CustomAppBarHome(
              hintText: "Find Product",
              mycontroller: mycontroller,
              iconData: Icons.search,
              labeltext: "Search",
            ),
            SizedBox(height: 10,),
            Container(
              
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 150,
                    decoration: BoxDecoration(
                        color: AppColor.kPrimaryColor2,
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      title: Text(
                        "A Summer Surprise",
                        style: Styles.boldtextStyle20
                            .copyWith(color: Colors.white),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Cashback 20%",
                          style: Styles.boldtextStyle28
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    right: -20,
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          color: AppColor.kPrimaryColor3,
                          borderRadius: BorderRadius.circular(160)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 60,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 10,),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.kPrimaryColor4
                    ),
                    width: 60,
                    height: 60,
                    child: SvgPicture.network("${AppLink.imageCategories}/${controller.categories[index]['categories_image']}"));
                },
                itemCount: controller.categories.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        )),
      ),
    ));
  }
}