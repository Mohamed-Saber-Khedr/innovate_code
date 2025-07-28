import 'package:flutter/material.dart';
import 'package:innova_code/Features/onboarding/presention/view/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 1500),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const Onboarding();
            },
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
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
}
