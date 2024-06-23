import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/views/widgets/home/custom_appBar_home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            CustomAppBarHome(
            hintText: "Find Product",
            mycontroller: mycontroller,
            iconData: Icons.search,
            labeltext: "Search",
          ),

          Container(
            margin: EdgeInsets.only(left: 20 , right: 20),
            child: Stack(children: [
              Container(
                alignment: Alignment.center,
                height: 150,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor2,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: ListTile(
                  title: Text("A Summer Surprise" , style: Styles.boldtextStyle20.copyWith(color: Colors.white),),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Cashback 20%" , style: Styles.boldtextStyle28.copyWith(color: Colors.white),),
                  ),
                ),
              ),
              Positioned(
                top: -20,
                right: -20,
                child: Container(
                height: 160, width:  160,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor3,
                  borderRadius: BorderRadius.circular(160)
                ),
                
              ),
              )
            ],),
          )
          ],
        )
      ),
    );
  }
}