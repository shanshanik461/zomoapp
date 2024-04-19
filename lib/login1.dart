import 'package:flutter/material.dart';
import 'package:zomoapk/page2.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/food bck.jpg",
              // Specify the correct asset path
              // Adjust the size, alignment, and other properties as needed
              width: double.maxFinite,
              height: 329,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 340),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange.shade600,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5))),
                width: 12,
                height: 42,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 65),
              child: Text("Enter your mobile number to",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text("get OTP",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 238),
              child: Text(
                "Mobile Number",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 37,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/flag.jpeg",
                            width: 20, // Adjust the width as needed
                            height: 20, // Adjust the height as needed
                          ),
                        ),
                        Text("+91"),
                        Icon(Icons.arrow_drop_down_sharp)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 37,
                    width: 230,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder
                              .none, // Remove the border of the text field
                          hintText: 'Enter Phone Number',

                          // Add a hint text to the text field
                          // Adjust content padding
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2 ()),
                );
              },
              child: Container(
                width: 344,
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




            SizedBox(height: 24,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    height: 2,
                    width: 95,
                    color: Colors.grey.shade400,
                  ),
                ),
                Text("OR",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500)),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Container(
                    height: 2,
                    width: 95,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 50,
              width: 344,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: Image.asset(
                      "assets/glogo-removebg-preview.png",
                      // Specify the correct asset path
                      // Adjust the size, alignment, and other properties as needed
                      width: 23,
                      height: 23,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Text("Continue With Google",style: TextStyle(color: Colors.grey.shade700,fontSize: 17),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text("By continue,you agree to our",style: TextStyle(

              color: Colors.grey.shade700,
              fontSize: 13
            ),
            ),
            Text("Terms of service Privacy Policy Content Policy",
              style: TextStyle(

                  color: Colors.grey.shade700,
                  fontSize: 13

              ),),

          ],
        ),
      ),
    );
  }
}
