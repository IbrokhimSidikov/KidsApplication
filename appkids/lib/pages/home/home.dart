import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/banner_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  List<BannerItem> banners = [];

  String get name => 'Cameron';
  String get surnaname => 'Abdullayev';
  void _getBanners() {
    banners = BannerItem.getBanners();
  }

  @override
  void initState() {
    _getBanners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _getBanners();
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 26,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/profile');
                    },
                    child: Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFe9e9e9),
                      ),
                      child: Center(
                        child: SvgPicture.asset('images/face.svg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 20),
                      ),
                      Text(
                        surnaname,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: SvgPicture.asset('images/love_icon.svg'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 156,
            left: 0,
            right: 0,
            child: CarouselSlider(
              // Carousel slider
              options: CarouselOptions(
                height: 186.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
              ),
              items: banners.map((banner) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 0.0),
                      decoration: BoxDecoration(
                        color: banner.boxColor.withOpacity(0.0),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Image.asset(
                        banner.imagePath,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Positioned(
            top: 370,
            left: 0,
            child: Column(
              //i want this one to be scrollable
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Modules',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 32,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200.0),
                      child: SvgPicture.asset('images/ball.svg'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 350,
                  // decoration: BoxDecoration(color: Colors.green),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, '/finance');
                              },
                              child: Container(
                                height: 157,
                                width: 158,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xff4bbfef),
                                ),
                                // child: SvgPicture.asset('images/'),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 33.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 74,
                                        height: 74,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                        child: SvgPicture.asset('images/finance_icon.svg'),
                                      ),
                                      Text(
                                        'Finance',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, '/photos');
                              },
                              child: Container(
                                height: 157,
                                width: 158,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffd9d9d9),
                                ),
                                // child: SvgPicture.asset('images/'),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 33.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 74,
                                        height: 74,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      Text(
                                        'Photos',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 28.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Sports Card
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, '/sports');
                              },
                              child: Container(
                                height: 157,
                                width: 158,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffd9d9d9),
                                ),
                                // child: SvgPicture.asset('images/'),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 33.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 74,
                                        height: 74,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      Text(
                                        'Sports',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/education');
                              },
                              child: Container(
                                height: 157,
                                width: 158,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffd9d9d9),
                                ),
                                // child: SvgPicture.asset('images/'),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 33.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 74,
                                        height: 74,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      Text(
                                        'Education',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 28,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/health');
                              },
                              child: Container(
                                height: 157,
                                width: 158,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xff97c94b),
                                ),
                                // child: SvgPicture.asset('images/'),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 33.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 74,
                                        height: 74,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                        child: SvgPicture.asset('images/heart_green.svg'),
                                      ),
                                      Text(
                                        'Health',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/menu');
                              },
                              child: Container(
                                height: 157,
                                width: 158,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffff9f3f),
                                ),
                                // child: SvgPicture.asset('images/'),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 33.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 74,
                                        height: 74,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                        child: SvgPicture.asset('images/menu_icon.svg'),
                                      ),
                                      Text(
                                        'Menu',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: const Color.fromARGB(255, 255, 255, 255)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
