import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

//stateless version - use observe (obs) and reactive (rx) instead
class CalcTwo extends StatelessWidget {
  //setting up variables

  TextEditingController firstNum = TextEditingController(); //1
  TextEditingController secondNum = TextEditingController(); //2
  RxDouble value1 =
      0.0.obs; //make variable for first input //needs to be double or num
  RxDouble value2 = 0.0.obs; //make variable for second input
  RxDouble resValue = 0.0.obs; //make variable for result
  CalcTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Calculator!!",
              style: TextStyle(color: Colors.amberAccent, fontSize: 40),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: firstNum,
            decoration: InputDecoration(
              hintText: 'First Number',
              prefixIcon: Icon(Icons.numbers),
              filled: true,
              fillColor: Colors.indigo.shade300,
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: secondNum,
            decoration: InputDecoration(
              hintText: 'Second Number',
              prefixIcon: Icon(Icons.numbers),
              filled: true,
              fillColor: Colors.indigo.shade300,
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        value1.value =
                            double.parse(firstNum.text); //string cast todouble
                        //think that the firtNUm comes in as string and have to change
                        value2.value = double.parse(secondNum.text);
                        // testprints
                        print(value1); //this one should be andoubleeger
                        print(value2);
                        resValue.value = value1.value + value2.value;
                        print(resValue);
                        //closes set state
                      }, //closes onpressed
                      child: Text('+')),

                  SizedBox(width: 20.0),

                  //subtract section
                  ElevatedButton(
                    onPressed: () {
                      value1.value =
                          double.parse(firstNum.text); //string cast todouble
                      //think that the firtNUm comes in as string and have to change
                      value2.value = double.parse(secondNum.text);
                      // testprints
                      print(value1.value); //this one should be andoubleeger
                      print(value2.value);
                      resValue.value = value1.value - value2.value;
                      print(resValue);
                      //closes set state
                    }, //closes onpressed
                    child: Text('-'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.indigo)),
                  ),
                ],
              ),
              //Row 1 end
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      value1.value =
                          double.parse(firstNum.text); //string cast todouble
                      //think that the firtNUm comes in as string and have to change
                      value2.value = double.parse(secondNum.text);
                      // testprints
                      print(value1); //this one should be andoubleeger
                      print(value2);
                      resValue.value = value1.value * value2.value;
                      print(resValue);
                    },
                    child: Text('X'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.deepOrange),
                    ),
                  ),

                  SizedBox(width: 20.0),

                  //division
                  ElevatedButton(
                    onPressed: () {
                      value1.value =
                          double.parse(firstNum.text); //string cast todouble
                      //think that the firtNUm comes in as string and have to change
                      value2.value = double.parse(secondNum.text);
                      // testprints
                      print(value1.value); //this one should be andoubleeger
                      print(value2.value);
                      resValue.value = value1.value / value2.value;
                    },
                    child: Text('%'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.deepPurpleAccent),
                    ),
                  ),
                ],
              )
            ],
          ),
          Center(
            child: Obx(
              () {
                child:
                return Text(
                  resValue.toString(),
                  style: TextStyle(fontSize: 20.0),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
