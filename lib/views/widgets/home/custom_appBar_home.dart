import 'package:e_commerce_app14/controllers/home/home_controller.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/views/widgets/home/custom_textField_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomAppBarHome extends StatelessWidget {

   CustomAppBarHome({super.key,required this.hintText,required this.labeltext,required this.iconData,this.mycontroller, this.onPressedAccount, this.onPressedSearch,});


  final String hintText;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final void Function()? onPressedAccount;
  final void Function()? onPressedSearch;

  HomeControllerImp controller = Get.put(HomeControllerImp());

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.only(top: 20 , left: 20 , right: 20 , bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Hi, ${controller.userName}",
                style: Styles.regulartextStyle20,
              ),
              const Spacer(),
              IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: onPressedAccount,
                  icon: const Icon(
                    Icons.account_circle,
                    size: 35,
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormHome(
              hinttext: hintText,
              labeltext: labeltext,
              iconData: iconData,
              mycontroller: mycontroller,
              onPressedSearch: onPressedSearch
              )
        ],
      ),
    );
  }
}