// ignore_for_file: unnecessary_const, use_super_parameters, file_names

import 'package:flutter/material.dart';
import 'package:spac/components/Bottom_Nav_Bar.dart';
import 'package:spac/pages/Booking.dart';
import 'package:spac/pages/Notify.dart';
import 'package:spac/pages/Profile.dart';
import 'package:spac/pages/shop.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    // Replace the below placeholders with your actual page widgets
    const Shop(), // Placeholder for the first page
    const Booking(), // Placeholder for the second page
    const Notify(), // Placeholder for the third page
    const Profile(), // Placeholder for the fourth page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),

     appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Builder( 
        builder: (context) => IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(left:25.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          onPressed: (){
            Scaffold.of(context).openDrawer();
            },
        ),
      ),
     ),
     drawer: Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DrawerHeader(
                  child: Image.asset(
                    'lib/images/SPACLOGO.png',
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: Colors.grey[800],
                ),
              ),

              const Padding(
                padding: const EdgeInsets.only(left:25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color:Colors.white,
                    ),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white,
                    ),
                    ),
                ),
              ),

              const Padding(
                padding: const EdgeInsets.only(left:25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color:Colors.white,
                    ),
                  title: Text(
                    'Settings',
                    style: TextStyle(color: Colors.white,
                    ),
                    ),
                ),
              ),

              const Padding(
                padding: const EdgeInsets.only(left:25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color:Colors.white,
                    ),
                  title: Text(
                    'About',
                    style: TextStyle(color: Colors.white,
                    ),
                    ),
                ),
              ),

              const Padding(
                padding: const EdgeInsets.only(left:25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color:Colors.white,
                    ),
                  title: Text(
                    'Contact',
                    style: TextStyle(color: Colors.white,
                    ),
                    ),
                ),
              ),
              

            ],
     ),
        ],
      ),
     ),

      body: _pages[_selectedIndex],
    );
  }
}
