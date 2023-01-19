import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(
        children: [
          Container(
            child: Text("Login Page",style: TextStyle(color: Colors.black,fontSize: 30),),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black),

          ),
        ],
      ),
      ),
    );
  }
}
