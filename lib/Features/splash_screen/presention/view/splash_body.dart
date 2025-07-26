import 'package:flutter/material.dart';
Stack splashBody(){
  return Stack(
    children:[ 
      Container(
        width: double.infinity,
        height: 914,
        decoration: BoxDecoration(
          color: Color(0xff0053DA),
        ),
      ),
      Center(
        child: Image(image: AssetImage("assets/logo.png"),),
      ),
    ]
  );
}