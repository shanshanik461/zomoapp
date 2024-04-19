import 'package:flutter/material.dart';
import 'package:zomoapk/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.grey),
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text("OTP Verification",
              style: TextStyle(fontWeight: FontWeight.w500)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Text("We have sent a Verification code to",
              style: TextStyle(fontWeight: FontWeight.w500,
              color: Colors.grey.shade700
              ),),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: Text(
              "+91 9990001211",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
            ),
          ),
          SizedBox(height: 40,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 50,
                  width: 50,

                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(15),


                ),),
              ),
              Container(
                height: 50,
                width: 50,

                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(15),


                ),),
              Container(
                height: 50,
                width: 50,

                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(15),


                ),),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 50,
                  width: 50,

                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(15),


                  ),),
              ),
            ],
          ),
          SizedBox(height: 70,),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3 ()),
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
                  "Send OTP",
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
