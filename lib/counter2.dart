import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class CounterTwo extends StatelessWidget {
  RxInt number = 0.obs; //int to RxInt (rx-reactive) (obs.observe)
  CounterTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(//when value changes obx will rebuild
              () {
            return Text(
              number.value
                  .toString(), //using .value because it was an 'rxint' not int
              //want the actual value
            );
          }),
          ElevatedButton(
              onPressed: () {
                number.value++;
              },
              child: Text('click')),
        ],
      ),
    ));
  }
}
