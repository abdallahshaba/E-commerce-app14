import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBarSignIn extends StatelessWidget {
  const CustomAppBarSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
        
            },
             child: const Icon(Icons.arrow_back)),
            const Padding(
              padding: EdgeInsets.only(left: 125),
              child: Text(
                "Sign In",
                style: Styles.boldtextStyle22,
              ),
            )
          ],
        ),
      );
  }
}
