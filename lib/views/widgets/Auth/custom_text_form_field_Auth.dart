import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.name, required this.icon, required this.hintText, required this.textEditingController, });
  final String name;
  final Icon icon;
  final String hintText;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.blue
                      )
                    ),
                    hintText: hintText,
                    hintStyle: const TextStyle(color: Color.fromARGB(255, 142, 134, 134) , fontSize: 12),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 38),
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child:  Text(name)),
                    suffixIcon: icon,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                  ),
                );
  }
}