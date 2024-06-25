import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:flutter/material.dart';

class CustomCardHome extends StatelessWidget {
  const CustomCardHome(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                title,
                style: Styles.boldtextStyle20.copyWith(color: Colors.white),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  subtitle,
                  style: Styles.boldtextStyle28.copyWith(color: Colors.white),
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
    );
  }
}
