import 'package:flutter/material.dart';
import 'package:innova_code/core/cubit/onboard_cubit.dart';
import 'package:innova_code/Features/splash_screen/presention/view/splash_body.dart';


Padding forgetPassRow({required BuildContext context, required OnboardCubit cubit}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Checkbox(
          value: cubit.checkBoxValue,
          onChanged: (value) => cubit.cBoxVl(value: value!),
          activeColor: Color(0xff0053DA),
          splashRadius: 24,
          side: BorderSide(width: 1,color: Color(0xffCCCCCC),),
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(1.5),),),
        ),
        Text("Remember me",style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Color(0xFF011e4d),
        ),),
        Spacer(),

        InkWell(
          child: Text(
            "Forget Password?",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color(0xFFD30000),
            ),
          ),
          onTap: () {
            Future.delayed(Duration(seconds: 3),);
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SplashScreen(),),);
          },
        ),
      ],
    ),
  );
}