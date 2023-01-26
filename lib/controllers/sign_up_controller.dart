import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/material.dart';

//to make controller - class, name, extends, getxcontroller
class SignUpController extends GetxController {
  //initialize variables
  late TextEditingController emailController; //to get user input
  late TextEditingController passwordController; //to get user input
  late GlobalKey<FormState> formKey;
  @override
  void onInit() {
    //fill variable on initialize
    emailController = TextEditingController(); //to get user input
    passwordController = TextEditingController(); //to get user input
    formKey = GlobalKey<FormState>();
    super.onInit();
  }

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

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
