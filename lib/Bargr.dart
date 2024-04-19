import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zomoapk/Page4.dart';
import 'package:zomoapk/serch2.dart';

class Bargr extends StatefulWidget {
  const Bargr({super.key});

  @override
  State<Bargr> createState() => _BargrState();
}

class _BargrState extends State<Bargr> {
  bool status = false;
  double wid = 2;
  int _currentIndex = 3;
  final List<String> _image = [
   'assets/wrk1.jpg',
    'assets/wrk1.jpg',
    'assets/wrk1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 400,
                  height: 150,
                  child: Image(
                    image: AssetImage("assets/brgrking.jpeg"),
                    fit: BoxFit
                        .cover, // You can change BoxFit.cover to any other fit option
                  ),
                ),
        
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page4()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1, // Adjust the width of the border as needed
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        child: Center(
                            child: Icon(Icons.arrow_back_ios,
                                color: Colors.white, size: 20)),
                      ),
        
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Serch2 ()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 330),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1, // Adjust the width of the border as needed
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        child: Center(
                            child: Icon(Icons.search_rounded,
                                color: Colors.white, size: 20)),
        
                      ),
        
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 5, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: Offset(0, 3), // Changes position of shadow
                        ),
                      ],
        
                    ),
                    child: Positioned(
                      top: 10,
                      left: 0,
                      right: 0,
                      child: Container(
        
                        height: 160,
                        width: 330,
                        decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 60,
                              left: 10),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/logo1.png"),
                                radius: 25,
        
                              ),
                            ),
        
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 155, top: 10),
                                  child: Text( "Burger King",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                                ),
        
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text( "Burger King",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: Colors.grey.shade400),),
                                    ),
        
                                     Padding(
                                       padding: const EdgeInsets.only(left: 120),
                                       child: Icon(Icons.share),
                                     ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Icon(Icons.favorite,color: Colors.red),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  ",
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
        
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
        
                                            Padding(
                                              padding: const EdgeInsets.only(right: 20),
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
                                              padding: const EdgeInsets.only(right: 20),
                                              child: Text(
                                                "5.0 (10K Reviews)",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
        
        
        
        
                                          ],
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Container(
                                          height: 2,
                                          width: 100,
                                          color: Colors.grey.shade300,
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "₹ 200",
                                              style: TextStyle(
                                                color: Colors.orange.shade800,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5),
                                              child: Text("for one"),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Container(
                                        height: 50,
                                        width: 3,
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.orange,
                                              radius: 9,
                                              child: Icon(
                                                size: 16,
                                                Icons.location_on,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          color: Colors.orange,
                                          width: 2,
                                          height: 3,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Container(
                                          color: Colors.orange,
                                          width: 2,
                                          height: 3,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Container(
                                          color: Colors.orange,
                                          width: 2,
                                          height: 3,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.orange,
                                          radius: 9,
                                          child: Icon(
                                            size: 16,
                                            Icons.timer,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("2 km"),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: Text("28 min"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
        
        
        
        
                              ],
                            ),
        
        
                          ],
                        ),
        
        
                      ),
                    ),
                  ),
                )
              ],
            ),
        
        
        
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 160.0,
                // enlargeCenterPage: true,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: _image.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: 300,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Image.asset(
                        item,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _image.map((url) {
                int index = _image.indexOf(url);
                return Container(
                  width: 9.0,
                  height: 9.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: _currentIndex == index
                        ? BoxShape.rectangle
                        : BoxShape.rectangle,
                    color:
                    _currentIndex == index ? Colors.orange : Colors.black12,
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
        
                        width:25,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade500,
                              width: 1.0,
                            ),
                            color: Colors.white
                            ,),
                        child: Center(
                          child: CircleAvatar(backgroundColor: Colors.green,
                            radius: 7,
                          ),
                        ),
        
        
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("Veg"),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
        
                        width:25,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                            width: 1.0,
                          ),
                          color: Colors.white
                          ,),
                        child: Center(
                          child: CircleAvatar(backgroundColor: Colors.red,
                            radius: 7,
                          ),
                        ),
        
        
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("Veg"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 18,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      height: 5,
                      child: Row(
                        children: [
                          Image(
                            image:
                            AssetImage("assets/shanik.png"),
                          ),
                          Text("Best Seller",
                              style: TextStyle(fontSize: 8)),
                        ],
                      ),
                    ),
                  ),
                ),
        
              ],
            ),
            SizedBox(height: 10,
            ),
            Container(
              height: 2,
              width: 380,
              color: Colors.grey.shade300,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text("Food",style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.bold),


              ),
            ),
            SizedBox(height: 10,
            ),
            Container(
              height: 2,
              width: 380,
              color: Colors.grey.shade300,
            ),
        
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text("Featured Food(04)"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.keyboard_arrow_down_outlined,size: 30,),
              )
            ],),
            SizedBox(height: 10,),
            Container(
              height: 2,
              width: 380,
              color: Colors.grey.shade300,
            ),
        
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Featured Food(04)"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.keyboard_arrow_down_outlined,size: 30,),
                )
              ],),
            SizedBox(height: 10,),
            Container(
              height: 2,
              width: 380,
              color: Colors.grey.shade300,
            ),
        
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Featured Food(04)"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.keyboard_arrow_down_outlined,size: 30,),
                )
              ],),
            SizedBox(height: 10,),
            Container(
              height: 2,
              width: 380,
              color: Colors.grey.shade300,
            ),
        
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Featured Food(04)"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.keyboard_arrow_down_outlined,size: 30,),
                )
              ],),
            SizedBox(height: 10,),
            Container(
              height: 2,
              width: 380,
              color: Colors.grey.shade300,
            ),
        
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Featured Food(04)"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.keyboard_arrow_down_outlined,size: 30,),
                )
              ],),
            SizedBox(height: 10,),
            Container(
              height: 2,
              width: 380,
              color: Colors.grey.shade300,
            ),
        
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Featured Food(04)"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.keyboard_arrow_down_outlined,size: 30,),
                )
              ],),
          ],
        ),
      ),
    );
  }
}
