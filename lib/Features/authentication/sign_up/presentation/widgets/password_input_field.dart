import 'package:flutter/material.dart';
import 'package:innova_code/core/validators.dart';
import 'package:innova_code/core/widget/custom_text_field_widget.dart';

Padding passwordInputField() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        CustomTextFieldWidget(
          hintText: "Enter here your Password",
          keyboardType: TextInputType.name,
          controller: TextEditingController(),
          validator: (value) {
            return MyValidators.passwordValidator(value);
          },
        ),
      ],
    ),
  );
}