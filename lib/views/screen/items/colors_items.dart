import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:flutter/material.dart';

class ColorsItems extends StatelessWidget {
  const ColorsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.kPrimaryColor3) , 
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Red" , style: Styles.boldtextStyle14, )),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.kPrimaryColor3) , 
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.kPrimaryColor3
                  ),
                  child: Center(child: Text("Black" , style: Styles.boldtextStyle14.copyWith(color: Colors.white), )),
              ),
              const SizedBox(width: 10,),
               Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.kPrimaryColor3) , 
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Blue" , style: Styles.boldtextStyle14, )),
              ),
            ],
          ),
        );
  }
}