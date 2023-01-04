import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileCardBuilder extends StatelessWidget {
  const ProfileCardBuilder({
    Key? key,
    required this.name,
    required this.photo,
    required this.age,
  }) : super(key: key);
  final String name;
  final String photo;
  final String age;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: Get.width / 2.7,
          height: Get.height / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              photo,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(', '),
            Text(age),
          ],
        ),
      ],
    );
  }
}
