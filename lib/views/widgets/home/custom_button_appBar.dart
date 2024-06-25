import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonAppBar extends StatelessWidget {
   CustomButtonAppBar(
      {super.key, this.onPressed,required this.isActive , required this.text, this.icon, this.colorItemSelected});
  final void Function()? onPressed;
  final String text;
  final IconData? icon;
  final Color? colorItemSelected; 
   bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [Icon(icon , color: isActive==true? colorItemSelected : Colors.black,), Text(text , style: TextStyle(color: isActive==true? colorItemSelected : Colors.black,),)],
      ),
    );
  }
}
