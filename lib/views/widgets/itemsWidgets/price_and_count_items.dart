import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/views/widgets/itemsWidgets/custom_text_in_itemdatails.dart';
import 'package:flutter/material.dart';

class PriceAndCountItems extends StatelessWidget {
  const PriceAndCountItems({super.key, required this.price, required this.count,required this.onPressed,required this.onRemoved});
  final String price;
  final String count;
  final void Function()? onPressed;
  final void Function()? onRemoved;
  @override
  Widget build(BuildContext context) {
    return        Row(children: [
        IconButton(onPressed: onPressed, icon: const Icon(Icons.add)),
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 25,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.kPrimaryColor3)
          ),
          child:  Text(count , style: Styles.boldtextStyle14,),
        ),
       IconButton(onPressed: onRemoved, icon: const Icon(Icons.remove)),
       const Spacer(),
          CustomTextInItemDetails(text: "$price\$", textStyle: Styles.boldtextStyle24.copyWith(color: AppColor.kPrimaryColor3)),
       ],);
  }
}