import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test1/calculator.dart';
import 'package:test1/calculator2.dart';
import 'package:test1/counter.dart';

import 'package:get/get.dart';
import 'package:test1/view/pages/newlogin.dart';
import 'counter2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase
      .initializeApp(); //move this bit out of sequential order cuz takes longer

  runApp(
    GetMaterialApp(debugShowCheckedModeBanner: false, home: loginTwo()),
  );
}
//this is our main function and starting place for the computer.
// We set our home page here. 