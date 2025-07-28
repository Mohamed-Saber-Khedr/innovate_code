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
import 'package:innova_code/Features/authentication/login/presentation/widgets/create_account.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnboardCubit(),
        child: BlocBuilder<OnboardCubit, OnboardState>(
          builder: (context, state) {
            OnboardCubit cubit = BlocProvider.of(context);
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: double.infinity, height: 68),
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  apperBar(),
                  SizedBox(height: 32),
                  emailInputField(),
                  SizedBox(height: 16),
                  passwordInputField(),
                  SizedBox(height: 16),
                  forgetPassRow(context:context,cubit: cubit),
                  SizedBox(height: 48),
                  customButton(context: context, direction: SplashScreen(), name: "Sign in"),
                  SizedBox(height: 24),
                  Text("or continue with",style: TextStyle(color: Color(0xff777777),),),
                  SizedBox(height: 16),
                  customButton(context: context, direction: SplashScreen(), name: "Continue with Google",textColor: Color(0xff777777),buttonColor: Colors.transparent,isBorder: true,islogo: true,logoPath: "assets/google logo.png"),
                  SizedBox(height: 145,),
                  createAccount(context)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
