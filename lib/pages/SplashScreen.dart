// ignore_for_file: prefer_const_constructors, file_names, library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spac/pages/Booking.dart';
import 'package:spac/pages/Homepage.dart';
import 'package:spac/pages/shop.dart'; // Replace with your home page import

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome(); // Start the timer when the screen is initialized
  }

  // Method to navigate to the home page after 5 seconds
  void _navigateToHome() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => const Homepage()), // Replace with your home page
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Set background color
      body: Center(
        child: Image.asset(
          'lib/images/SPACLOGO.png', // Replace with your image path
          width: 200, // Adjust image width as needed
          height: 200,
          color: Colors.black, // Adjust image height as needed
        ),
        /*child: Text(
          'SPAC',
          ),*/
      ),
    );
  }
}
