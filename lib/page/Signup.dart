import 'package:flutter/material.dart';

import 'login.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

          padding: EdgeInsets.all(50.0),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9
                ],
                colors: [
                  Colors.purple.shade800,
                  Colors.purple.shade700,
                  Colors.purple.shade600,
                  Colors.purple.shade500
                ],

              )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/logo.png",height:50,),
                Form(
                  key:formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value){
                          if (value == null || value.trim().isEmpty) {
                            return 'This field is required';
                          }
                          if (value.trim().length < 4) {
                            return 'Username must be at least 4 characters in length';
                          }
                          // Return null if the entered username is valid
                          return null;
                        },

                        decoration: InputDecoration(
                            icon: Icon(Icons.account_circle,color:Colors.black),
                            hintText: "Email",hintStyle: TextStyle(color: Colors.white70)
                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        validator: (value){
                          if (value == null || value.trim().isEmpty) {
                            return 'This field is required';
                          }
                          if (value.trim().length < 4) {
                            return 'Username must be at least 4 characters in length';
                          }
                          // Return null if the entered username is valid
                          return null;
                        },

                        decoration: InputDecoration(
                            icon: Icon(Icons.account_circle,color:Colors.black),
                            hintText: "User name",hintStyle: TextStyle(color: Colors.white70)
                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        validator: (value){
                          if (value == null || value.trim().isEmpty) {
                            return 'This field is required';
                          }
                          if (value.trim().length < 8) {
                            return 'Password must be at least 8 characters in length';
                          }
                          // Return null if the entered password is valid
                          return null;
                        },
                        decoration:InputDecoration(
                            icon: Icon(Icons.lock,color: Colors.black),
                            hintText: "password",hintStyle: TextStyle(color: Colors.white70)
                        ) ,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  child: ButtonTheme(
                      child:  MaterialButton(onPressed: (){
                        if(formkey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Create a Account"),
                          ),
                          );

                          Navigator.pop(context,MaterialPageRoute(builder:(context)=>LoginPage()));
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(" failure"),
                          ),
                          );
                        }
                      },
                        child: const Text("Signup",style: TextStyle(color: Colors.white),),
                        color: Colors.purple.shade400,
                        highlightColor: Colors.orangeAccent,
                        splashColor: Colors.redAccent,

                      )),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
