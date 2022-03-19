import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';


class SplashScreen extends StatefulWidget {
  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), 
    ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("SplashScreen"),
          SizedBox(height: 10,),
          CircularProgressIndicator(color: Colors.green,),
        ],),
      ),
    );
  }
}