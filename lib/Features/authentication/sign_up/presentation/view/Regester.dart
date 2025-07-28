import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:innova_code/Features/authentication/login/presentation/widgets/upper_section.dart';
import 'package:innova_code/Features/authentication/login/presentation/widgets/email_input_field.dart';
import 'package:innova_code/Features/authentication/login/presentation/widgets/password_input_field.dart';
import 'package:innova_code/Features/splash_screen/presention/view/splash_body.dart';
import 'package:innova_code/core/cubit/onboard_cubit.dart';
import 'package:innova_code/core/cubit/onboard_state.dart';
import 'package:innova_code/Features/authentication/login/presentation/widgets/forget_password.dart';
import 'package:innova_code/core/widget/custom_Button.dart';



class RegesterScreen extends StatefulWidget {
  const RegesterScreen({super.key});

  @override
  State<RegesterScreen> createState() => _RegesterScreenState();
}

class _RegesterScreenState extends State<RegesterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
      ),
      body: Container(),
    );
  }

}
