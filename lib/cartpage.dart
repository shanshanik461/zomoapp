import 'package:flutter/material.dart';

import 'login1.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios
        ),

        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text("Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold
          )),
        ),
      ),
       body: Column(
         children: [

           Center(
             child: Image.asset(
               "assets/pppp.jpg",
               // Specify the correct asset path
               // Adjust the size, alignment, and other properties as needed
               width: 350,
               height: 350,
             ),
           ),
           SizedBox(height: 30,),
           Text("Yor Cart is Empty!!",style: TextStyle(
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
                 MaterialPageRoute(builder: (context) => Login2 ()),
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
