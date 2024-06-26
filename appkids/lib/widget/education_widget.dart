import 'package:flutter/material.dart';

class EducationWidget extends StatefulWidget {
  final String title;
  final String expandedContent;
  


  const EducationWidget({
    Key? key,
    required this.title,
    required this.expandedContent, 
  }): super (key: key);

  @override
  State<EducationWidget> createState() => _EducationWidgetState();
}

class _EducationWidgetState extends State<EducationWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Container(
              color: Color(0xFFD9D9D9), // Tile background color
              child: ListTile(
                title: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, 
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: Icon(
                  color: Colors.white,
                  _isExpanded ? Icons.expand_less : Icons.expand_more,
                ),
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
              ),
            ),
          ),
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(widget.expandedContent),
            ),
        ],
      ),
    );
  }
}