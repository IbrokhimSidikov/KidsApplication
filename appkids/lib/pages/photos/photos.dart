import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

class Photos extends StatefulWidget {
  const Photos({super.key});

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  List<File> _images = [];

  @override
  void initState() {
    super.initState();
    _loadImages();
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _images.add(File(pickedFile.path));
      });
      _saveImagePaths();
    }
  }

  Future<void> _saveImagePaths() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> paths = _images.map((file) => file.path).toList();
    prefs.setStringList('imagePaths', paths);
  }

  Future<void> _loadImages() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? imagePaths = prefs.getStringList('imagePaths');
    if (imagePaths != null) {
      setState(() {
        _images = imagePaths.map((path) => File(path)).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Photos',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 30, fontFamily: 'Poppins'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_list,
              size: 30,
            ),
            onPressed: () {
              // Define the action when the filter icon is pressed
              // For example, show a filter dialog or update the state
              // showFilterDialog(context);
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(25.0),
        children: [
          GestureDetector(
            onTap: _pickImage,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 351,
              decoration: BoxDecoration(
                color: Color(0xFFd9d9d9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'images/photo_library.svg',
                      width: 37,
                      height: 37,
                    ),
                    Text(
                      'Surat',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ..._images.map((image) => Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 351,
              decoration: BoxDecoration(
                color: Color(0xFFd9d9d9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.file(image),
            ),
          )),
        ],
      ),
    );
  }
}
