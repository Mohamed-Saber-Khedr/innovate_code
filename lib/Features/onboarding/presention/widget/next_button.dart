import 'package:flutter/material.dart';
import 'package:innova_code/Features/onboarding/presention/view/onboarding.dart';

Padding nextButtom(BuildContext context,int currentPage, PageController controllerPage){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: InkWell(
      onTap: () async {
        if (currentPage < pages.length - 1) {
          controllerPage.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        } else {
          currentPage = 0;
        }
      },

      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF0053DA),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text("Next",
            style: TextStyle(
              fontSize: 16, color: Color(0XFFFFFFFF),
            ),
          ),
        ),
      )
    ),
  );
}