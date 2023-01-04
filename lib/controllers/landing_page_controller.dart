import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

//notes:
//we are putting all the landing page logic here
//start a controller by defining a class
//class, class name (capitals), extends, 'GetXController' '{'
//later, the controllers will replace the need for statefulWidgets
//using controllers not only for organization, but also for speed of the app
//prepare variables
//variables have 'late' before them because we don't fill the variables until
//'on intialize'
//the override is to override things from the getxcontroller itself
//use 'void' before the oninit because we are not returning anything
//the oninit is a function
//returns function(){code}

class LandingPageController extends GetxController {
  //late, type, variable name;
  late int indexValue;
  late PageController pageController;
  @override
  //filling variable cups at a certain time
  void onInit() {
    indexValue = 0;
    pageController = PageController();
    super.onInit();
  }

  //this is the actual logic bit for this section
  //returning nothing, name, (parameters), {code}
  void bottomNavBarOnTap(int value) {
    indexValue = value;
    pageController.jumpToPage(value);
  }
}
