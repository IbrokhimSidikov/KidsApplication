import 'package:flutter/material.dart';

class Finance extends StatefulWidget {
  const Finance({super.key});

  @override
  State<Finance> createState() => _FinanceState();
}

class _FinanceState extends State<Finance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Finance',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 30, fontFamily: 'Poppins'),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 27, right: 27, top: 27),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 274,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center, // near the center of the container
                  radius: 0.5, // adjust the radius as needed
                  colors: [
                    Color(0xFF4BBFEF), // 0% color
                    Color(0xFF4ABEEF), // 100% color
                  ],
                  stops: [0.0, 1.0], // define the stops for the gradient
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      'Total Payment',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      '-3 500 000.00',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 32,
                        color: Colors.white
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 1.5,
                      indent: 20,
                      endIndent: 20,
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(27.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 77,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(124),
                  color: Color(0xFF97C948)),
              child: Center(
                  child: Text(
                'Pay card',
                style: TextStyle(
                    color: Colors.white, fontSize: 24, fontFamily: 'Poppins'),
              )),
            ),
          )
        ],
      ),
    );
  }
}
