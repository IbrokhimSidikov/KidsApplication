import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu',
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
    );
  }
}