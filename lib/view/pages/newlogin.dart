import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/controllers/login_controller.dart';
import 'package:test1/view/pages/forgotpassword.dart';
import 'package:test1/view/pages/landing_page.dart';

import 'package:test1/view/pages/sign_up.dart';

import '../../controllers/auth_controller.dart';

//import first, then stateful W

class loginTwo extends StatefulWidget {
  const loginTwo({super.key});

  //State is information that can be read synchronously
  // when the widget is built and might change during the
  // lifetime of the widget. It is the responsibility of the
  // widget implementer to ensure that the State is promptly
  // notified when such state changes, using State.setState.

  @override
  State<loginTwo> createState() => _loginTwoState();
}

//you put stuff under the second override

class _loginTwoState extends State<loginTwo> {
  LoginController controller = Get.put(LoginController());
  AuthController auth = Get.put(AuthController());
  // to call a contoller, you have to "put" it into memory first
  //not calling it here, just putting it in memory
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: controller.formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/calyxfont.png', height: 70.0),
                const Text(
                  'Powered By Pehkhet Inc.',
                  style: TextStyle(
                      wordSpacing: 5.0,
                      fontSize: 15.0,
                      color: Colors.deepOrange),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/alogo2.png', height: 25.0),
                ),
                //username textfield
                //checking for nothing
                //checking for email
                TextFormField(
                  validator: (value) {
                    //think I am calling the logic bit here
                    return controller.emailValidation(value);
                    //need keyword return!!
                  },
                  decoration: const InputDecoration(
                    hintText: 'Username/Email',
                    prefixIcon: Icon(Icons.email_sharp),
                  ),
                ),
                //password textfield
                //checking for a number
                TextFormField(
                  //validator: (value) {
                  //calling the logic part
                  //return controller.passValidation(value);
                  //
                  // },
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.password_outlined),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print('test');
                      //when you press  this button, all the
                      //validators you set up will be checked.
                      //if they are validated, the code written here
                      //will run. In this case, a snack bar
                      //message
                      //if (controller.formKey.currentState!.validate()) {
                      auth.emailAndPasswordLogin(
                          controller.emailController.text,
                          controller
                              .passwordController.text); //takes two parameters
                      //}
                      //ScaffoldMessenger.of(context).showSnackBar(
                      // SnackBar(
                      //   content: Text('Processing..'),
                      // ),
                      //);
                      //Get.offAll(LandingPage());
                    },
                    child: Text('Login'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.black)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.to(ForgotPass());
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Color.fromARGB(111, 0, 0, 0),
                      ),
                      child: Text('Forgot Password?'),
                    ),
                  ],
                ),
                SizedBox(height: 150.0),
                TextButton(
                  onPressed: () {
                    print(
                        '################################################ about to go to sign up');
                    Get.to(NewAccount()); //sign_up.dart
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(111, 0, 0, 0),
                  ),
                  child: Text('Need an Account?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
