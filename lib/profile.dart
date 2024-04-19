import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 140),
                    child: Positioned(
                      top: 40,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 7, // Adjust the width of the border as needed
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("assets/girls1.jpeg"),
                        ),

                      ),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 137,left: 157),
                    child: Text("Lina Jon",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150,left: 135),
                    child: Text("lina122@gmail.com",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,
                        color: Colors.grey.shade600)),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
               Stack(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 50,top: 17),
                     child: Container(
                       height: 50,
                       width: 320,
                       decoration: BoxDecoration(
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.5), // Shadow color
                             spreadRadius: 5, // Spread radius
                             blurRadius: 7, // Blur radius
                             offset: Offset(0, 3), // Changes position of shadow
                           ),
                         ],
                         color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                       ),


                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 50,top: 1),
                             child: Text("Profile Setting",style: TextStyle(
                               fontSize: 12
                             )),
                           ),
                           SizedBox(width: 150,),
                           Icon(Icons.arrow_forward_ios)
                         ],

                       ),

                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 5, left: 20),
                     child: Container(
                       decoration: BoxDecoration(

                       ),
                       child: Positioned(
                         top: 10,
                         left: 0,
                         right: 0,
                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               color: Colors.black26,
                               width: 1, // Adjust the width of the border as needed
                             ),
                             shape: BoxShape.circle,
                           ),
                           child: CircleAvatar(
                             radius: 35,
                             backgroundColor: Colors.white,
                             child: Icon(Icons.account_circle_rounded,color: Colors.grey.shade600,size: 40),
                           ),
                         ),
                       ),
                     ),
                   )


                 ],
               )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 17),
                      child: Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),


                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50,top: 1),
                              child: Text("Manage Delivery Address",style: TextStyle(
                                  fontSize: 12
                              )),
                            ),
                            SizedBox(width: 90,),
                            Icon(Icons.arrow_forward_ios)
                          ],

                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20),
                      child: Container(
                        decoration: BoxDecoration(

                        ),
                        child: Positioned(
                          top: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                width: 1, // Adjust the width of the border as needed
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.location_on_outlined,color: Colors.grey.shade600,size: 35),
                            ),
                          ),
                        ),
                      ),
                    )


                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 17),
                      child: Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),


                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50,top: 1),
                              child: Text("My list",style: TextStyle(
                                  fontSize: 12
                              )),
                            ),
                            SizedBox(width: 195,),
                            Icon(Icons.arrow_forward_ios)
                          ],

                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20),
                      child: Container(
                        decoration: BoxDecoration(

                        ),
                        child: Positioned(
                          top: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                width: 1, // Adjust the width of the border as needed
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.favorite_border,color: Colors.grey.shade600,size: 35),
                            ),
                          ),
                        ),
                      ),
                    )


                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 17),
                      child: Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),


                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50,top: 1),
                              child: Text("Manage Payment",style: TextStyle(
                                  fontSize: 12
                              )),
                            ),
                            SizedBox(width: 135,),
                            Icon(Icons.arrow_forward_ios)
                          ],

                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20),
                      child: Container(
                        decoration: BoxDecoration(

                        ),
                        child: Positioned(
                          top: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                width: 1, // Adjust the width of the border as needed
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.local_atm_sharp,color: Colors.grey.shade600,size: 35),
                            ),
                          ),
                        ),
                      ),
                    )


                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 17),
                      child: Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),


                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50,top: 1),
                              child: Text("My Voucher",style: TextStyle(
                                  fontSize: 12
                              )),
                            ),
                            SizedBox(width: 165,),
                            Icon(Icons.arrow_forward_ios)
                          ],

                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20),
                      child: Container(
                        decoration: BoxDecoration(

                        ),
                        child: Positioned(
                          top: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                width: 1, // Adjust the width of the border as needed
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.movie_filter_outlined,color: Colors.grey.shade600,size: 35),
                            ),
                          ),
                        ),
                      ),
                    )


                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 17),
                      child: Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),


                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50,top: 1),
                              child: Text("Other Setting",style: TextStyle(
                                  fontSize: 12
                              )),
                            ),
                            SizedBox(width: 155,),
                            Icon(Icons.arrow_forward_ios)
                          ],

                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20),
                      child: Container(
                        decoration: BoxDecoration(

                        ),
                        child: Positioned(
                          top: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                width: 1, // Adjust the width of the border as needed
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.settings,color: Colors.grey.shade600,size: 35),
                            ),
                          ),
                        ),
                      ),
                    )


                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 17),
                      child: Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),


                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50,top: 1),
                              child: Text("Notification Setting",style: TextStyle(
                                  fontSize: 12
                              )),
                            ),
                            SizedBox(width: 120,),
                            Icon(Icons.arrow_forward_ios)
                          ],

                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20),
                      child: Container(
                        decoration: BoxDecoration(

                        ),
                        child: Positioned(
                          top: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                width: 1, // Adjust the width of the border as needed
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.notification_important,color: Colors.grey.shade600,size: 35),
                            ),
                          ),
                        ),
                      ),
                    )


                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 17),
                      child: Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),


                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50,top: 1),
                              child: Text("Log out",style: TextStyle(
                                  fontSize: 12
                              )),
                            ),
                            SizedBox(width: 185,),
                            Icon(Icons.arrow_forward_ios)
                          ],

                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20),
                      child: Container(
                        decoration: BoxDecoration(

                        ),
                        child: Positioned(
                          top: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                width: 1, // Adjust the width of the border as needed
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.logout,color: Colors.grey.shade600,size:35),
                            ),
                          ),
                        ),
                      ),
                    )


                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
