import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spac/models/save.dart';
import 'package:spac/pages/SplashScreen.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Save(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
      );
  }
}
