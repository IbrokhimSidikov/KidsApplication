import 'package:flutter/material.dart';

class HealthWidget extends StatefulWidget {
  final String title;
  final String status;

  const HealthWidget({
    Key? key,
    required this.title,
    required this.status,
  }) : super(key: key);

  @override
  State<HealthWidget> createState() => _HealthWidgetState();
}

class _HealthWidgetState extends State<HealthWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: <Widget>[
          ClipRRect(
            
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 74,
              color: Color(0xFFD9D9D9),
              child: Center(
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                     
                      Text(
                        widget.status,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          color: Colors.black45
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
