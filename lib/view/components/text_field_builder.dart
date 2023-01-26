import 'package:flutter/material.dart';

//puts stuff on screen - UI component

class TextFieldBuilder extends StatelessWidget {
  const TextFieldBuilder({
    Key? key,
    //parameters
    required this.hint,
    required this.icon,
    required this.obscure,
    required this.validator,
    required this.controller,
  }) : super(key: key);
  //variable cups
  final TextEditingController controller;
  final String hint;
  final Icon icon;
  final bool obscure;
  final String? Function(String?)? validator; //validator is the cup name

  //pretty sure you can hover over -textfieldbuilder- and hit the quick fix
  //when you did the quick fix it gave the required parameter options

  //hint text, icon, yes or no obscure, and validator requirements passed in
  //by passing in parameters, I am allowing for customizing of this builder

  //final is used because we are passing in the parameter and not
  //changing it

//hint text, icons, obscure text, different validations
  //return the validation or otherwise

  //below, in the functionality of this widget, I include the
  //customizable variables that come in as parameters

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: icon,
      ),
    );
  }
}
