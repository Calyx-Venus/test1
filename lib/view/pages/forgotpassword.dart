import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/view/pages/newlogin.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 70.0,
          child: Image.asset('assets/calyxfont.png'),
        ),
        backgroundColor: Color.fromARGB(154, 254, 253, 253),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Field is empty';
                  }
                  if (value.contains(
                        new RegExp(
                            r'[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]'),
                      ) ==
                      false) {
                    return 'Invalid Email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Email', prefixIcon: Icon(Icons.email_sharp)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Get.off(loginTwo());
                    }
                  },
                  child: Text('Get Recovery Email'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.black)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
