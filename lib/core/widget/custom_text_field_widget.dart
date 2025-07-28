import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget(
      {super.key, required this.hintText,  this.validator,required this.keyboardType, required this.controller});
  final String hintText;
  // final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      cursorColor: Color(0xff0053DA),
      decoration: InputDecoration(
        // label: Text(label),
        // labelStyle: TextStyle(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 18,vertical: 18),
        filled: false,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey,width: 1)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:  const BorderSide(color: Color(0XFF0053DA),width: 1)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0XFFD30000),width: 1)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0XFFD30000),width: 1)
        ),
      ),
    );
  }
}
