import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bog`cha haqida',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
