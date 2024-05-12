import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/views/widgets/language/custom_button.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text("Choose Language", style: Styles.boldtextStyle26,),
           const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              width: double.infinity,
              child: CutomButtonLanguage(
                onPressed: () {
                  
                },
                textName: "Ar",
              )
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              width: double.infinity,
              child: CutomButtonLanguage(
                onPressed: () {
                  
                },
                textName: "En",
              )
            )
          ],
        ),
      ),
    );
  }
}
