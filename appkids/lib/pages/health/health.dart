import 'package:appkids/widget/health_widget.dart';
import 'package:flutter/material.dart';

class Health extends StatefulWidget {
  const Health({super.key});

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Health',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 30, fontFamily: 'Poppins'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_list,size: 30,),
            onPressed: () {
              // Define the action when the filter icon is pressed
              // For example, show a filter dialog or update the state
              // showFilterDialog(context);
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          HealthWidget(title: 'Heart', status: 'good'),
          HealthWidget(title: 'Temperature', status: '36'),
          HealthWidget(title: 'Height', status: '130'),
          HealthWidget(title: 'Weight', status: '30kg'),
        ],
      ),
    );
  }
}