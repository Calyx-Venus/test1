import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:test1/view/pages/landing_page.dart';
import 'package:test1/view/pages/newlogin.dart';

import '../../controllers/auth_controller.dart';

class SettingsPg extends StatefulWidget {
  const SettingsPg({super.key});

  @override
  State<SettingsPg> createState() => _SettingsPgState();
}

class _SettingsPgState extends State<SettingsPg> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance; // connecting to firebase
  AuthController auth = Get.put(AuthController()); //variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 70.0,
          child: Image.asset('assets/calyxfont.png'),
        ),
        backgroundColor: Color.fromARGB(160, 255, 255, 255),
        actions: [],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text('Manage Your Account'),
              SizedBox(height: 20),
              Text('Notifications'),
              SizedBox(height: 20),
              Text('Privacy & Location'),
              SizedBox(height: 20),
              Text('Upgrade Your Account'),
              SizedBox(height: 20),
              Text('Help'),
              SizedBox(height: 20),
              TextButton(
                  onPressed: () {
                    auth.logOut(); // logic in the auth controller
                  },
                  child: Text('Logout'))
            ],
          ),
        ),
      ),
    );
  }
}
