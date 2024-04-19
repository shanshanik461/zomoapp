import 'package:flutter/material.dart';
import 'package:zomoapk/Page4.dart';
import 'package:zomoapk/login1.dart';
import 'package:zomoapk/offer.dart';
import 'package:zomoapk/page1.dart';

import 'bar.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Spleash_1(),
    );
  }
}
