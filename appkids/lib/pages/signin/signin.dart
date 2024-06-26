import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 50),
                  // Place for Logo
                  Container(
                    width: 193,
                    height: 193,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFD9D9D9), // Placeholder color
                    ),
                    child: Center(
                      child: Text(
                        'Logo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 58),
                  Text(
                    'Login',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF9BC7F).withOpacity(0.22),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFC9732)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Parol',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF9BC7F).withOpacity(0.22),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFC9732)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 99),
                  GestureDetector(
                    onTap: () {
                      // Handle sign in logic
                      Navigator.pushReplacementNamed(context, '/homepage');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          colors: [Color(0xFF97C94B), Color(0xFF84B140)],
                          radius: 5,
                        ),
                        borderRadius: BorderRadius.circular(46),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      alignment: Alignment.center,
                      child: Text(
                        'Kirish',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle forgot password
                    },
                    child: Text(
                      'Maxfiylik siyosati',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF949494),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          // Positioned SVG figure
          Positioned(
            top: 40,
            left: 299,
            child: SvgPicture.asset(
              'images/Group8122.svg', // Replace with your SVG file path
              width: 100,
              height: 100,
            ),
          ),
          // Another Positioned SVG figure
          Positioned(
            top: 220,
            left: 48,
            child: SvgPicture.asset(
              'images/Vector.svg', // Replace with your SVG file path
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 9,
            left: 10,
            child: SvgPicture.asset(
              'images/Group8121.svg', // Replace with your SVG file path
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 195,
            right: 30,
            child: SvgPicture.asset(
              'images/Group7511.svg', // Replace with your SVG file path
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}