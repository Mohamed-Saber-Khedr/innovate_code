import 'package:flutter/material.dart';
import 'Features/onboarding/presention/view/onboarding.dart';
// import 'Features/splash_screen/presention/view/splash_body.dart';



 class InnovaApp extends StatelessWidget {
   const InnovaApp({super.key});


   @override
   Widget build(BuildContext context) {

     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         body:Onboarding(),
       ),
     );
   }
 }
