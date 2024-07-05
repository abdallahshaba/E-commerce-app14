import 'package:flutter/material.dart';

class CustomTextInItemDetails extends StatelessWidget {
  const CustomTextInItemDetails({super.key, required this.text, required this.textStyle});
  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(text , style: textStyle,),
    );
  }
}