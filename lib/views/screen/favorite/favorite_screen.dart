import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
         const SizedBox(height: 20,),
          Container(
            child: Row(
              children: [
                IconButton(onPressed: (){
                  Get.back();
                }, icon: const Icon(Icons.arrow_back_ios_new , size: 22,)),
               const SizedBox(width: 10,),
               const Text("Favorites" , style: Styles.boldtextStyle26,)
              ],
            ),
          )
        ],
      ),
    );
  }
}