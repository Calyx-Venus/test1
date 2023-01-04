import 'package:flutter/material.dart';
import 'package:test1/view/components/profile_card_builder.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ProfileCardBuilder(
            name: 'Hinata', photo: 'assets/hinata1.jpeg', age: '18'),
      ),
    );
  }
}
