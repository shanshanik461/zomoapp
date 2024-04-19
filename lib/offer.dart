import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Offer extends StatefulWidget {
  const Offer({super.key});

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  bool status = false;
  double wid = 10;
  int _currentIndex = 0;
  List _image = [
    'assets/WhatsApp Image 2024-03-20 at 10.46.36_f061ebd0.jpg',
    'assets/WhatsApp Image 2024-03-20 at 10.46.10_bb5d795e.jpg',
    'assets/WhatsApp Image 2024-03-20 at 10.46.36_f061ebd0.jpg',
    'assets/WhatsApp Image 2024-03-20 at 10.46.10_bb5d795e.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              ClipPath(
                clipper: BazierCurve(),
                child: Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(28)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 9,
                        color: Colors.black,
                        spreadRadius: 5,
                        blurStyle: BlurStyle.normal,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/WhatsApp Image 2024-03-20 at 10.13.36_2bab317a.jpg'),
                      fit: BoxFit
                          .cover, // This line ensures the image fits within the container
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          height: 300,
                          child: Column(
                            children: [
                              // Your other widgets here
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Align(
                    alignment: Alignment.center,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 400.0,
                        enlargeCenterPage: true,
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
                            return Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 8.0),
                              child: Container(
                                width:
                                    200, // Adjust width as per your requirement
                                height:
                                    300, // Adjust height as per your requirement
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     blurRadius: 4,
                                  //     spreadRadius: 2,
                                  //     color: Colors.black12,
                                  //     blurStyle: BlurStyle.normal,
                                  //   ),
                                  //],
                                  image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 480),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _image.map((url) {
                    int index = _image.indexOf(url);
                    return Container(
                      width: 9.0,
                      height: 9.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: _currentIndex == index
                            ? BoxShape.rectangle
                            : BoxShape.rectangle,
                        color: _currentIndex == index
                            ? Colors.orange
                            : Colors.black12,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ]),
            Container(
              height: 40,
              width: double.maxFinite,
              color: Colors.grey.shade300,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Big Deal offer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Text("Min 50% OFF",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w400,
                          fontSize: 13)),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 200,
              color: Colors.grey.shade300,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
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
                              height: 2,
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
                                        color: Colors.orange.shade800,
                                        size: 20),
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        height: 180,
                        width: 140,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage("assets/pizza1.jpeg"),
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
                                        color: Colors.orange.shade800,
                                        size: 20),
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        height: 180,
                        width: 140,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: CircleAvatar(
                                radius: 42,
                                backgroundImage:
                                    AssetImage("assets/maggi.jpeg"),
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
                                        color: Colors.orange.shade800,
                                        size: 20),
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
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
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
                              height: 2,
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
                                        color: Colors.orange.shade800,
                                        size: 20),
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        height: 180,
                        width: 140,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage("assets/pizza1.jpeg"),
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
                                        color: Colors.orange.shade800,
                                        size: 20),
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        height: 180,
                        width: 140,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: CircleAvatar(
                                radius: 42,
                                backgroundImage:
                                    AssetImage("assets/maggi.jpeg"),
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
                                        color: Colors.orange.shade800,
                                        size: 20),
                                    radius: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assets/MANTHI.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 90,
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 27,
                          left: 10,
                          child: Text(
                            "Upto ₹2",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 8,
                          child: Text(
                            "100% Off",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 220,
                  child: Material(
                    elevation:
                    30, // Adjust the elevation to control the intensity of the shadow
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Manthi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(right: 10, top: 4),
                                child: Container(
                                  height: 16,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade100,
                                    borderRadius: BorderRadius.circular(30),
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
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Text(
                              "manthi,alfa",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
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
                                padding: const EdgeInsets.only(left: 10),
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
                          Text(
                            "- - - - - - - - - - - - - - - - - - - - -  -  ",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 3,
                                        backgroundColor: Colors.black,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text("Kochi"),
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
                                padding: const EdgeInsets.only(left: 30),
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
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    color: Colors.orange,
                                    width: 2,
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    color: Colors.orange,
                                    width: 2,
                                    height: 5,
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
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assets/pizza-5179939_960_720.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 90,
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 27,
                          left: 10,
                          child: Text(
                            "Upto ₹2",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 8,
                          child: Text(
                            "150% Off",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 220,
                  child: Material(
                    elevation:
                    30, // Adjust the elevation to control the intensity of the shadow
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 145),
                            child: Text(
                              "Pizza",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 110),
                            child: Text(
                              "pizzahut",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
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
                                padding: const EdgeInsets.only(left: 10),
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
                          Text(
                            "- - - - - - - - - - - - - - - - - - - - -  -  ",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 3,
                                        backgroundColor: Colors.black,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text("Kochi"),
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
                                padding: const EdgeInsets.only(left: 30),
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
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    color: Colors.orange,
                                    width: 2,
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    color: Colors.orange,
                                    width: 2,
                                    height: 5,
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
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assets/brge.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 90,
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 27,
                          left: 10,
                          child: Text(
                            "Upto ₹2",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 8,
                          child: Text(
                            "150% Off",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 220,
                  child: Material(
                    elevation:
                        30, // Adjust the elevation to control the intensity of the shadow
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Bargar",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 4),
                                child: Container(
                                  height: 16,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade100,
                                    borderRadius: BorderRadius.circular(30),
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
                          Padding(
                            padding: const EdgeInsets.only(right: 110),
                            child: Text(
                              "veg bargar",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
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
                                padding: const EdgeInsets.only(left: 10),
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
                          Text(
                            "- - - - - - - - - - - - - - - - - - - - -  -  ",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 3,
                                        backgroundColor: Colors.black,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text("Kochi"),
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
                                padding: const EdgeInsets.only(left: 30),
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
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    color: Colors.orange,
                                    width: 2,
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    color: Colors.orange,
                                    width: 2,
                                    height: 5,
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
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BazierCurve extends CustomClipper<Path> {
//
//
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(1, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.35, size.height * .68,
        size.width * 0.50, size.height * .59);

    path.quadraticBezierTo(size.width * .35, size.height * .60, size.width - 1,
        size.height * 0.75);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
