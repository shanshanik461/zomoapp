import 'package:flutter/material.dart';
import 'package:zomoapk/profile.dart';

import 'Page4.dart';
import 'cartpage.dart';
import 'offer.dart';



class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Page4(),
    Offer(),
    Cart(),
    Profile(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offer',

          ),
           BottomNavigationBarItem(
             icon: Icon(Icons.shopping_cart),
             label: 'Cart',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.contacts),
            label: 'Profile',
           ),
        ],
        selectedItemColor: Colors.orange,
      ),
    );
  }
}