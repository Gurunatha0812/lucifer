import 'package:flutter/material.dart';
import 'package:lucifer/main.dart';

import 'login.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();

}

class _splashState extends State<splash> {

  void initState(){
    super.initState();
    navigatetohome();
  }
  navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LoginPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(

       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,

         children: [
           Container(
               height: 100,
               width: 100,
             child: Image.asset('assets/logo.png'),
           ),
           // Container(
           //   child:  Text("splash screen",style: TextStyle(color: Colors.black,fontSize: 30)),
           // )
         ],
       ),

      ),

    );
  }
}
