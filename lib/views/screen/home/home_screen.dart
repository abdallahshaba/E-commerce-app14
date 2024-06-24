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
                  SizedBox(
                    height: 20,
                  ),
                  CustomAppBarHome(
                    hintText: "Find Product",
                    mycontroller: mycontroller,
                    iconData: Icons.search,
                    labeltext: "Search",
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                 const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 90,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(width: 10,),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.kPrimaryColor4),
                              width: 60,
                              height: 60,
                              child: SvgPicture.network(
                                  "${AppLink.imageCategories}/${controller.categories[index]['categories_image']}"),
                            ),
                           const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "${controller.categories[index]['categories_name']}",
                              style: const TextStyle(fontSize: 13),
                            )
                          ],
                        );
                      },
                      itemCount: controller.categories.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Text("Product for you" , style: Styles.boldtextStyle20,),
                  const SizedBox(height: 15,),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder:(context, index) {
                        return Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 25 , vertical: 30),
                              child: Image.asset(
                                "assets/images/product/2.png" , 
                                height: 90, 
                                width: 140,
                                fit: BoxFit.fill,
                                ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              height: 120,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 61, 59, 59).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20)
                              ),
                            ),

                            Positioned(
                              top: 5,
                              left: 25,
                              child: Text("Laptop Surface Go 2" , style: Styles.boldtextStyle14.copyWith(color: const Color.fromARGB(255, 123, 26, 26)),))
                          ],
                        );
                      },
                      ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
