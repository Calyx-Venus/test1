import 'package:flutter/material.dart';

class SettingsPg extends StatefulWidget {
  const SettingsPg({super.key});

  @override
  State<SettingsPg> createState() => _SettingsPgState();
}

class _SettingsPgState extends State<SettingsPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 70.0,
          child: Image.asset('assets/calyxfont.png'),
        ),
        backgroundColor: Color.fromARGB(160, 255, 255, 255),
        actions: [],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text('Manage Your Account'),
              SizedBox(height: 20),
              Text('Notifications'),
              SizedBox(height: 20),
              Text('Privacy & Location'),
              SizedBox(height: 20),
              Text('Upgrade Your Account'),
              SizedBox(height: 20),
              Text('Help'),
            ],
          ),
        ),
      ),
    );
  }
}
