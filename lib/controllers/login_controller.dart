import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

//login logic

class LoginController extends GetxController {
  late GlobalKey<FormState> formKey;
  late TextEditingController emailController; //to get user input
  late TextEditingController passwordController; //to get user input
  late int X; //variables here
  //'late' because defined later
  //not define until initialize
  @override //override some inherited properties
  void onInit() {
    X = 10;
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController(); //to get user input
    passwordController = TextEditingController(); //to get user input
    super.onInit();
  }

  //username
  //type - name - (parameter) - {code}
  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is empty';
    }
    if (value.contains(
          RegExp(r'[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]'),
        ) ==
        false) {
      return 'Invalid Email';
    }
    return null;
  }

  //type - name - (parameter) - {code}
  String? passValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is empty';
    }
    //length of is less than 8
    if (value.length < 8) {
      return 'Too short';
    }

    //checking for a number
    if (value.contains(RegExp(r'[0-9]')) == false) {
      return 'Need a Number';
    }
    return null;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
