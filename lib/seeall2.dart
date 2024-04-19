import 'package:flutter/material.dart';

class Seeall2 extends StatefulWidget {
  const Seeall2({super.key});

  @override
  State<Seeall2> createState() => _Seeall2State();
}

class _Seeall2State extends State<Seeall2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 180,
                    width: 140,
                    child: Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage:
                            AssetImage("assets/chikan kari.jpeg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 22),
                          child: Text(
                            "Chicken Karahi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.green.shade800,
                                radius: 8,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green.shade100,
                                  size: 11,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("3.7"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                color: Colors.black26,
                                height: 11,
                                width: 3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("20 min"),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text("₹89.56"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                backgroundColor: Colors.orange.shade200,
                                child: Icon(Icons.shopping_cart,
                                    color: Colors.orange.shade800, size: 20),
                                radius: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
        
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 180,
                    width: 140,
                    child: Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage:
                            AssetImage("assets/chikan kari.jpeg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 22),
                          child: Text(
                            "Chicken Karahi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.green.shade800,
                                radius: 8,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green.shade100,
                                  size: 11,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("3.7"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                color: Colors.black26,
                                height: 11,
                                width: 3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("20 min"),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text("₹89.56"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                backgroundColor: Colors.orange.shade200,
                                child: Icon(Icons.shopping_cart,
                                    color: Colors.orange.shade800, size: 20),
                                radius: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
        
        
        
        
                )
                  ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 180,
                    width: 140,
                    child: Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage:
                            AssetImage("assets/chikan kari.jpeg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 22),
                          child: Text(
                            "Chicken Karahi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.green.shade800,
                                radius: 8,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green.shade100,
                                  size: 11,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("3.7"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                color: Colors.black26,
                                height: 11,
                                width: 3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("20 min"),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text("₹89.56"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                backgroundColor: Colors.orange.shade200,
                                child: Icon(Icons.shopping_cart,
                                    color: Colors.orange.shade800, size: 20),
                                radius: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
        
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 180,
                    width: 140,
                    child: Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage:
                            AssetImage("assets/chikan kari.jpeg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 22),
                          child: Text(
                            "Chicken Karahi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.green.shade800,
                                radius: 8,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green.shade100,
                                  size: 11,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("3.7"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                color: Colors.black26,
                                height: 11,
                                width: 3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("20 min"),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text("₹89.56"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                backgroundColor: Colors.orange.shade200,
                                child: Icon(Icons.shopping_cart,
                                    color: Colors.orange.shade800, size: 20),
                                radius: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
        
        
        
        
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 180,
                    width: 140,
                    child: Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage:
                            AssetImage("assets/chikan kari.jpeg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 22),
                          child: Text(
                            "Chicken Karahi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.green.shade800,
                                radius: 8,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green.shade100,
                                  size: 11,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("3.7"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                color: Colors.black26,
                                height: 11,
                                width: 3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("20 min"),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text("₹89.56"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                backgroundColor: Colors.orange.shade200,
                                child: Icon(Icons.shopping_cart,
                                    color: Colors.orange.shade800, size: 20),
                                radius: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
        
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 180,
                    width: 140,
                    child: Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage:
                            AssetImage("assets/chikan kari.jpeg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 22),
                          child: Text(
                            "Chicken Karahi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.green.shade800,
                                radius: 8,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green.shade100,
                                  size: 11,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("3.7"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                color: Colors.black26,
                                height: 11,
                                width: 3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("20 min"),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text("₹89.56"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                backgroundColor: Colors.orange.shade200,
                                child: Icon(Icons.shopping_cart,
                                    color: Colors.orange.shade800, size: 20),
                                radius: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
        
        
        
        
                )
              ],
            ),
        
        
        
          ],
        ),
      ),
    );
  }
}
