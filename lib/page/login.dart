import 'package:flutter/material.dart';

import 'Signup.dart';
import 'home.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
           child: SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [

                 Image.asset("assets/logo.png",height:50,),
                 SizedBox(height: 50.0,),

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
                             content: Text("Login Success"),
                         ),
                         );
                         Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>homeScreen()));
                       }else{
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                           content: Text("Login failure"),
                         ),
                         );
                       }
                     },
                   child: const Text("Login",style: TextStyle(color: Colors.white),),
                   color: Colors.purple.shade400,
                   highlightColor: Colors.orangeAccent,
                   splashColor: Colors.redAccent,

                 )),
               ),

                 SizedBox(height: 20),
                 Text("you don't have account?",style: TextStyle(color: Colors.white)
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     Text("create a new account",style: TextStyle(color: Colors.white)
                     ),
                     SizedBox(width: 5),
                     TextButton(
                       onPressed: () {
                         //action
                         Navigator.push(context,MaterialPageRoute(builder:(context) =>SignupPage() ));
                       },
                       child: Text(
                         'Signup', //title
                         textAlign: TextAlign.end, //aligment
                       ),
                     ),
             // InkWell(
             //   onTap: () {
             //     Navigator.pushNamed(context,SignupPage());
             //   },
             //   child: new Padding(
             //     padding: new EdgeInsets.all(10.0),
             //     child: new Text("Signup"),
             //   ),
             // );
                     // Text("Sign up",style: TextStyle(color: Colors.white)
                     // ),
                   ],
                 ),
                 SizedBox(height: 20),
                 Text("Forgot Password?",style: TextStyle(color: Colors.white,decoration: TextDecoration.underline)
                 ),
               SizedBox(height: 20),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset("assets/google.png",height:30),
                   SizedBox(width:10),
                   Image.asset("assets/facebook.png",height:20,),
                 ],
               )

               ],


             ),
           ),
         ),

       ),
     ),
    );
  }
}
// mixin InputValidationMixin {
//   bool isPasswordValid(String password) => password.length == 6;
//
//   bool isEmailValid(String email) {
//     Pattern pattern ='^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//     RegExp regex = new RegExp(pattern);
//     return regex.hasMatch(email);
//   }
// }