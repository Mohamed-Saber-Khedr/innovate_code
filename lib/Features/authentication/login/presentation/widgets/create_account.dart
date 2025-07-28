import 'package:flutter/material.dart';
import 'package:innova_code/Features/authentication/sign_up/presentation/view/Regester.dart';


Row createAccount(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: [
      Text("Don’t have an account yet?",style: TextStyle(color:Color(0xff011e4d) ,fontSize:14 ,fontWeight:FontWeight.w400),),
      InkWell(
        onTap: () {
          Future.delayed(Duration(seconds: 3),);
          Navigator.push(context, MaterialPageRoute(builder: (context) => RegesterScreen(),),);
        },
        child: Text(" Create here",style: TextStyle(color:Color(0xff0053d9) ,fontSize:14 ,fontWeight:FontWeight.w400),),
      )
    ],
  );
}