import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Page4.dart';
import 'bar.dart'; // Import the lottie package

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 78),
            child: Text(
              "Allow access location",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Please enter your location to allow access to your",
              style: TextStyle(color: Colors.grey.shade900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
              "Location to find restaurants near you",
              style: TextStyle(color: Colors.grey.shade900),
            ),
          ),

          // Add the Lottie animation widget
          Lottie.network(
            'https://lottie.host/1ec3a853-d745-4adf-94cd-4325713c8714/UdyRbmY3eq.json',
            height: 200, // Adjust the height as needed
            width: 200, // Adjust the width as needed
            fit: BoxFit.contain, // Adjust the fit as needed
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Navigation ()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: 344,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange.shade600,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Allow accesss location",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Enter Location Manually",
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 20,
              ),

            ),
          )
        ],
      ),
    );
  }
}
