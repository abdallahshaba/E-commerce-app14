import 'package:flutter/material.dart';

class CustomTextFormHome extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final bool? obscureText;
  final void Function()? onPressedSearch;

  const CustomTextFormHome(
      {Key? key,
      this.obscureText,
      this.onPressedSearch,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false  ? false : true,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labeltext)),
            suffixIcon: InkWell(child: Icon(iconData), onTap: onPressedSearch),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}