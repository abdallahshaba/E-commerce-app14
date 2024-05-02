import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context , index) => Column(
            children: [
              Text(onBoardingList[index].title! , style: Styles.boldtextStyle20,),
             const SizedBox(height: 40,),
              Container(
                child: Image.asset(onBoardingList[index].image!, width: 250 , height: 290, fit: BoxFit.fill,)),
             const SizedBox(height: 40,),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  onBoardingList[index].body! ,
                   style: Styles.regulartextStyle16.copyWith(height: 2 , color: AppColor.grey),
                    textAlign: TextAlign.center
                    )),
            ],
          )
          ),
      )
    );
  }
}