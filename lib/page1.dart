import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zomoapk/login1.dart';



class Spleash_1 extends StatefulWidget {
  const Spleash_1({Key? key}) : super(key: key);

  @override
  State<Spleash_1> createState() => _Spleash_1State();
}

class _Spleash_1State extends State<Spleash_1> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 3 seconds
    Timer(Duration(seconds: 9), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Loga-removebg-preview.png",
              // Specify the correct asset path
              // Adjust the size, alignment, and other properties as needed
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}




