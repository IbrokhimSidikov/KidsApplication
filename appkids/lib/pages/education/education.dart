import 'package:appkids/widget/education_widget.dart';
import 'package:flutter/material.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Education',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          EducationWidget(
            title: 'Arab tili',
            expandedContent: 'dlas,dka,dkasd,askd,kmkkmkm',
          ),
          EducationWidget(
            title: 'English',
            expandedContent: 'dlas,dka,dkasd,askd,kmkkmkm',
          ),
          EducationWidget(
            title: 'Math',
            expandedContent: 'dlas,dka,dkasd,askd,kmkkmkm',
          ),
        ],
      ),
    );
  }
}
