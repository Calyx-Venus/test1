import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        //autovalidateMode: AutovalidateMode.always,
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Ice Skating Club',
              style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 67, 169, 220),
              ),
            ),
            Image.asset('assets/valieva1.jpeg'),
            //username
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Field is empty';
                }
                return null;
              },
              decoration: InputDecoration(
                  hintText: 'Username/Email',
                  prefixIcon: Icon(Icons.email_sharp)),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Field is empty';
                }
                return null;
              },
              obscureText: true,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.password_outlined)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Processing..'),
                        ),
                      );
                    }
                  },
                  child: Text('Login')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text('Forgot Password?')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
