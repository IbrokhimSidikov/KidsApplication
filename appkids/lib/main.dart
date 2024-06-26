import 'package:appkids/pages/education/education.dart';
import 'package:appkids/pages/finance/finance.dart';
import 'package:appkids/pages/health/health.dart';
import 'package:appkids/pages/home/home.dart';
import 'package:appkids/pages/menu/menu.dart';
import 'package:appkids/pages/photos/photos.dart';
import 'package:appkids/pages/profile/profile.dart';
import 'package:appkids/pages/signin/signin.dart';
import 'package:appkids/pages/sports/sports.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kids Application',
      debugShowCheckedModeBanner: false,
      // home: const SignIn(),
      initialRoute: '/',
      routes: {
        '/': (context) => SignIn(),
        '/homepage': (context) => Home(),
        '/sports': (context) => Sports(),
        '/finance': (context) => Finance(),
        '/photos': (context) => Photos(),
        '/education': (context) => Education(),
        '/health': (context) => Health(),
        '/menu': (context) => Menu(),
        '/profile': (context) => Profile(),
        
      },
    );
  }
}
