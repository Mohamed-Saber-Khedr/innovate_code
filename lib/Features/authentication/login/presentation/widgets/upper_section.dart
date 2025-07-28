import 'package:flutter/material.dart';

Padding apperBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 22,
        ),
        Text(
          "Get Started",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Step into the world of innovation. Learn the skills that shape the future — with expert-led courses designed for tomorrow's tech leaders.",
          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}