import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit() : super(OnboardInitial());
  int currentPage = 0;
  PageController pageController = PageController();
  bool checkBoxValue = false;
  bool hide = false;


  seSta({required int index}){
    currentPage=index;
    emit(ButtonConvert());
  }

  cBoxVl({required bool value}){
    checkBoxValue = value;
    emit(ButtonCkeckBox());
  }

  hiPassword(bool value){
    hide = !value;
    emit(EaySeePassword());
  }

}
