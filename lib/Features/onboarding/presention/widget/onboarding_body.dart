import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:innova_code/Features/authentication/login/presentation/view/login.dart';
import 'package:innova_code/Features/onboarding/presention/widget/next_button.dart';
import 'package:innova_code/Features/onboarding/presention/widget/page_indecator.dart';
import 'package:innova_code/core/widget/custom_Button.dart';
import 'package:innova_code/core/cubit/onboard_cubit.dart';
import 'package:innova_code/Features/onboarding/presention/view/onboarding.dart';
import 'package:innova_code/core/cubit/onboard_state.dart';



Widget buildColumn() {
  return BlocProvider(
  create: (context) => OnboardCubit(),
  child: BlocBuilder<OnboardCubit, OnboardState>(
    builder: (context, state) {
      OnboardCubit onboardCubit = BlocProvider.of(context);
      return Column(
        children: [
          SizedBox(
            height: 580,
            child: PageView.builder(
              controller: onboardCubit.pageController,
              onPageChanged: (index) {
                onboardCubit.seSta(index: index);
                //seSt(index: index);
              },
              itemCount: pages.length,
              itemBuilder: (context, index) => pages[index],
            ),
          ),
          smoothPageIndicator(onboardCubit),

          Expanded(child: Container(),),
          onboardCubit.currentPage <= 1 ? Column(children: [
            nextButtom(context, onboardCubit.currentPage, onboardCubit.pageController),
            customButton(context: context, direction: const LoginScreen(), name: "Skip",buttonColor: Colors.transparent,textColor: Color(0xff777777)),
          ],) :

          customButton(name:"Start",context: context,direction: const LoginScreen()),
          const SizedBox(height: 20),
        ],
      );
    },
  ),
);
}


