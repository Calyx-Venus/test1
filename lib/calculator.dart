import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField. //firstnum -think this is my variable
  TextEditingController firstNum = TextEditingController(); //1
  TextEditingController secondNum = TextEditingController(); //2
  double value1 = 0; //make variable for first input
  double value2 = 0; //make variable for second input
  double resValue = 0; //make variable for result

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Calculator!",
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
                      setState(() {
                        value1 =
                            double.parse(firstNum.text); //string cast todouble
                        //think that the firtNUm comes in as string and have to change
                        value2 = double.parse(secondNum.text);
                        // testprints
                        print(value1); //this one should be andoubleeger
                        print(value2);
                        resValue = value1 + value2;
                        print(resValue);
                      }); //closes set state
                    }, //closes onpressed
                    child: Text('+')),

                SizedBox(width: 20.0),

                //subtract section
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      value1 =
                          double.parse(firstNum.text); //string cast todouble
                      //think that the firtNUm comes in as string and have to change
                      value2 = double.parse(secondNum.text);
                      // testprints
                      print(value1); //this one should be andoubleeger
                      print(value2);
                      resValue = value1 - value2;
                      print(resValue);
                    }); //closes set state
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
                    setState(() {
                      value1 =
                          double.parse(firstNum.text); //string cast todouble
                      //think that the firtNUm comes in as string and have to change
                      value2 = double.parse(secondNum.text);
                      // testprints
                      print(value1); //this one should be andoubleeger
                      print(value2);
                      resValue = value1 * value2;
                      print(resValue);
                    });
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
                    setState(() {
                      value1 =
                          double.parse(firstNum.text); //string cast todouble
                      //think that the firtNUm comes in as string and have to change
                      value2 = double.parse(secondNum.text);
                      // testprints
                      print(value1); //this one should be andoubleeger
                      print(value2);
                      resValue = value1 / value2;
                    });
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
          child: Text(
            resValue.toString(),
            style: TextStyle(fontSize: 20.0),
          ),
        )

        //add section
        // Container(
        //   margin: EdgeInsets.only(right: 200.0, top: 10.0),
        //   child: ElevatedButton(
        //       onPressed: () {
        //         setState(() {
        //           value1 =double.parse(firstNum.text); //string cast todouble
        //           //think that the firtNUm comes in as string and have to change
        //           value2 =double.parse(secondNum.text);
        //           // testprints
        //           print(value1); //this one should be andoubleeger
        //           print(value2);
        //           resValue = value1 + value2;
        //           print(resValue);
        //         }); //closes set state
        //       }, //closes onpressed
        //       child: Text('Add')),
        // ),
        // Container(
        //     margin: EdgeInsets.only(right: 200.0, top: 5.0),
        //     child: Text(resValue.toString())),

        // //subtract section
        // Container(
        //   margin: EdgeInsets.only(right: 200.0, top: 5),
        //   child: ElevatedButton(
        //     onPressed: () {
        //       setState(() {
        //         value1 =double.parse(firstNum.text); //string cast todouble
        //         //think that the firtNUm comes in as string and have to change
        //         value2 =double.parse(secondNum.text);
        //         // testprints
        //         print(value1); //this one should be andoubleeger
        //         print(value2);
        //         resValue = value1 - value2;
        //         print(resValue);
        //       }); //closes set state
        //     }, //closes onpressed
        //     child: Text('Subtract'),
        //     style: ButtonStyle(
        //         backgroundColor:
        //             MaterialStatePropertyAll<Color>(Colors.indigo)),
        //   ),
        // ),
        // Container(
        //     margin: EdgeInsets.only(right: 200.0, top: 5.0),
        //     child: Text(resValue.toString())),

        // Container(
        //   margin: EdgeInsets.only(right: 200.0, top: 5.0),
        //   child: ElevatedButton(
        //       onPressed: () {
        //         setState(() {
        //           value1 =double.parse(firstNum.text); //string cast todouble
        //           //think that the firtNUm comes in as string and have to change
        //           value2 =double.parse(secondNum.text);
        //           // testprints
        //           print(value1); //this one should be andoubleeger
        //           print(value2);
        //           resValue = value1 * value2;
        //           print(resValue);
        //         });
        //       },
        //       child: Text('Multiply'),
        //       style: ButtonStyle(
        //           backgroundColor:
        //               MaterialStatePropertyAll<Color>(Colors.deepOrange))),
        // ),
        // Container(
        //     margin: EdgeInsets.only(right: 200.0, top: 5.0),
        //     child: Text(resValue.toString())),
      ],
    ));
  }
}
