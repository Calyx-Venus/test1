import 'package:flutter/material.dart';
import 'package:test1/view/components/text_field_builder.dart';
import 'package:get/get.dart';
import 'package:test1/controllers/sign_up_controller.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  // this is important-need to 'put' your controller in memory for later use
  SignUpController controller = Get.put(SignUpController());
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 70.0,
          child: Image.asset('assets/calyxfont.png'),
        ),
        backgroundColor: Color.fromARGB(180, 255, 255, 255),
        actions: [],
      ),
      body: Center(
        //this one gets your stuff in the middle
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Make a New Account',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(height: 50.0),
            Text('What is your email?'),

            //to make the validation functional - you must wrap in Form
            //you must also establish a key. Here it is formkey.
            //it is formkey because that was the global variable
            //established above.
            Form(
              key: formKey,
              child: TextFieldBuilder(
                hint: 'email',
                icon: Icon(Icons.email_outlined),
                obscure: false,
                //validator logic bit is in a controller
                validator: (value) {
                  //need to call the controller
                  return controller.emailValidation(value);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  //when you press  this button, all the
                  //validators you set up will be checked.
                  //if they are validated, the code written here
                  //will run. In this case, a snack bar
                  //message
                  //form key validation has to be reference here
                  //at the button.
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Processing..'),
                      ),
                    );
                  }
                },
                child: Text('Submit'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
