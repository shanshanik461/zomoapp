import 'package:flutter/material.dart';
import 'package:zomoapk/Page4.dart';

class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
           children: [
             SizedBox(height: 160,),
             Center(
               child: Image.asset(
                 "assets/WhatsApp Image 2024-03-19 at 13.10.49_6aa1a1e0.jpg",
                 // Specify the correct asset path
                 // Adjust the size, alignment, and other properties as needed
                 width: 350,
                 height: 350,
               ),
             ),
             SizedBox(height: 30,),
             Text("NO Notifications Found!!",style: TextStyle(
               fontWeight: FontWeight.bold,fontSize: 16
             ),),
             SizedBox(height: 20,),
             Text("You Have currently no notifaction. Well notify",style: TextStyle(
               color: Colors.grey.shade600
             ),),
             Text("you when somthing new arrives",style: TextStyle(
                 color: Colors.grey.shade600
             ),),
             SizedBox(height: 25,),
             GestureDetector(
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Page4 ()),
                 );
               },
               child: Container(
                 width: 350,
                 height: 50,
                 decoration: BoxDecoration(
                   color: Colors.orange.shade600,
                   borderRadius: BorderRadius.circular(8),
                 ),
                 child: Center(
                   child: Text(
                     "Back to Home",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 20,
                     ),
                   ),
                 ),
               ),
             ),
           ],

      ),
    );
  }
}
