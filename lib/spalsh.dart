import 'dart:async';

import 'package:bmi_calculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()  => splashState();
}

class splashState extends State<splashPage>{

  @override
  void initState(){
    super.initState();


    Timer(Duration(seconds: 3),(){
         
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('BMI',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),),
            Text('App By Rishabh raj.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          ],
        )),
      ),
    );
  }
}