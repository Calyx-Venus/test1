import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test1/controllers/landing_page_controller.dart';
import 'package:test1/view/pages/chat.dart';

import 'package:get/get.dart';
import 'package:test1/view/pages/matches_page.dart';
import 'package:test1/view/pages/my_profile.dart';
import 'package:test1/view/pages/settings.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  //connect to landing pg controller
  LandingPageController controller = Get.put(LandingPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 70.0,
          child: Image.asset('assets/calyxfont.png'),
        ),
        backgroundColor: Color.fromARGB(160, 255, 255, 255),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Get.to(() => SettingsPg());
            },
          ),
        ],
        actionsIconTheme:
            IconThemeData(color: Color.fromARGB(255, 64, 60, 56), size: 36),
      ),
      body: PageView(controller: controller.pageController, children: [
        MatchesPage(),
        ChatPage(),
        MyProfile(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(108, 83, 12, 12),
        backgroundColor: Colors.white,
        //ontap bit is logic - so we put it in the landing pg controller
        onTap: (value) {
          setState(() {
            //calling the function made in the controller pg
            controller.bottomNavBarOnTap(value);
          });
        },
        currentIndex: controller.indexValue,
        items: [
          BottomNavigationBarItem(
            label: 'Matches',
            icon: Icon(Icons.people_outline),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.message_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_outline),
          )
        ],
      ),
    );
  }
}

//grid view??
