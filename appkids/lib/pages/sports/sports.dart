import 'package:appkids/widget/expandable_card.dart';
import 'package:flutter/material.dart';

class Sports extends StatefulWidget {
  const Sports({super.key});

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sports',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 30, fontFamily: 'Poppins'),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          ExpandableCard(
            title: 'Swimming',
            expandedContent: 'dlas,dka,dkasd,askd,kmkkmkm',
            svgAssetPath: 'images/swimming_icon.svg',
          ),
          ExpandableCard(
            title: 'Football',
            expandedContent: 'dlas,dka,dkasd,askd,kmkkmkm',
            svgAssetPath: 'images/football_icon.svg',
          ),
          ExpandableCard(
            title: 'Chess',
            expandedContent: 'dlas,dka,dkasd,askd,kmkkmkm',
            svgAssetPath: 'images/chess_icon.svg',
          ),
        ],
      ),
    );
  }
}
