import 'package:flutter/material.dart';
//have to do your imports on each '.dart' - does not carry over

//to create a new class all you need to do is start typing 'stateless widget'
class MyName extends StatelessWidget {
  const MyName({super.key});
  //class name and const name have to be the same

//notes:
//we start our page with a scaffold for everything to be arranged on
//you can wrap things with columns and rows to change placement - using the bulb
//children widgets go inside square brackets
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Alexis',
          style: TextStyle(
              fontSize: 40,
              color: Colors.indigoAccent,
              fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Code Lesson',
            ),
            TextButton(
                onPressed: (() {
                  print("Hello World!");
                }),
                child: Text('Fiverr Link'))
          ],
        )
      ],
    ));
  }
}

//for multi lines my guess is creating a container and then putting a width
//limit.
