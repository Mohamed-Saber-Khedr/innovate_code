import 'package:flutter/cupertino.dart';

@immutable
sealed class OnboardState {}

final class OnboardInitial extends OnboardState {}
final class ButtonConvert extends OnboardState {}
final class ButtonCkeckBox extends OnboardState {}
final class EaySeePassword extends OnboardState {}

