import 'package:flutter/material.dart';
import 'package:flutter_application_1/BottomNavBar.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:flutter_application_1/HomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App',
    initialRoute: '/bottom', // Set the initial route to '/bottom'
    routes: {
      '/': (context) => LoginPage(),
      '/home': (context) => HomePage(),
      '/bottom': (context) => BottomNavigationBarExample(), // Perbarui route
    },
  ));
}
