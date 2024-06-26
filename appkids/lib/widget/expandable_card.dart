import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpandableCard extends StatefulWidget {
  final String title;
  final String expandedContent;
  final String svgAssetPath;

  const ExpandableCard({
    Key? key,
    required this.title,
    required this.expandedContent,
    required this.svgAssetPath,
  }) : super(key: key);
  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
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
              color: Color(0xFF95C64A), // Tile background color
              child: ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(widget.svgAssetPath),
                    SizedBox(width: 20.0),
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        color: Colors.white,
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
