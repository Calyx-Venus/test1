import 'package:flutter/material.dart';
import 'package:test1/controllers/auth_controller.dart';
import 'package:test1/view/components/text_field_builder.dart';
import 'package:get/get.dart';
import 'package:test1/controllers/sign_up_controller.dart';

//note logic for this page is held in seperate controllers + builders
//controllers are attached via get.put
//controller handles put in variable cups

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  // this is important-need to 'put' your controller in memory for later use
  SignUpController controller = Get.put(SignUpController());
  AuthController auth = Get.put(AuthController()); //variable //put into memory

  @override
  Widget build(BuildContext context) {
    print('##################################### this page runs');
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
              key: controller.formKey,
              child: Column(
                children: [
                  //calling my builder -it takes some parameters
                  TextFieldBuilder(
                    controller: controller
                        .emailController, //have to access email controller from sign-up-controller
                    hint: 'email',
                    icon: Icon(Icons.email_outlined),
                    obscure: false,
                    //validator logic bit is in a controller
                    validator: (value) {
                      //need to call the controller
                      return controller.emailValidation(value);
                    },
                  ),
                  TextFieldBuilder(
                    controller: controller.passwordController,
                    hint: 'password',
                    icon: Icon(Icons.email_outlined),
                    obscure: true,
                    //validator logic bit is in a controller
                    validator: (value) {
                      //need to call the controller
                      //return controller.emailValidation(value);
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  //when you press this button, all the
                  //validators you set up will be checked.
                  //if they are validated, the code written here
                  //will run. In this case, a snack bar
                  //message
                  //form key validation has to be reference here
                  //at the button.
                  if (controller.formKey.currentState!.validate()) {
                    auth.emailAndPasswordSignUp(
                        controller.emailController.text,
                        controller
                            .passwordController.text); //takes two parameters
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
