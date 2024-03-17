import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infenito/HomePage/widgets/App_bar.dart';
import 'package:infenito/HomePage/widgets/bottom_nav.dart';
import 'package:infenito/HomePage/widgets/instant_card.dart';
import 'package:infenito/HomePage/widgets/popular_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selecteditem = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          top: 0,
          child: SingleChildScrollView(
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/ALLAssets/background.jpg"),
                      fit: BoxFit.cover)),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 15.0,
                    sigmaY: 15.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Column(
                      children: [
                        appBar(height),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            "Most Popular Beverages",
                            style: TextStyle(color: Colors.white38),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              PopularIcons(
                                  width, height, "assets/ALLAssets/Coffee.png"),
                              PopularIcons(width, height,
                                  "assets/ALLAssets/Coffee2.png"),
                              PopularIcons(
                                  width, height, "assets/ALLAssets/Coffee.png"),
                              PopularIcons(width, height,
                                  "assets/ALLAssets/Coffee2.png"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Get it Instantly",
                            style: TextStyle(color: Colors.white54),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1)),
                            height: height * 0.457,
                            width: width,
                            child: ListView.builder(
                                itemCount: 6,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return InstantCard(height, width, context);
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        BootomNavigation(width, height)
      ],
    ));
  }

  Positioned BootomNavigation(double width, double height) {
    return Positioned(
        left: 25,
        right: 25,
        bottom: 25,
        child: Container(
          width: width - 50,
          height: height * 0.07,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black.withOpacity(0.5)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    navIcons(height, width, Icons.home_outlined, 0),
                    navIcons(height, width, Icons.person_outline, 1),
                    navIcons(height, width, Icons.wallet_outlined, 2),
                    navIcons(height, width, Icons.add_box_outlined, 3),
                    navIcons(height, width, Icons.message_outlined, 4),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Widget navIcons(double height, double width, IconData icons, int i) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selecteditem = i;
        });
      },
      child: Container(
        height: height * 0.05,
        width: width * 0.1,
        decoration: BoxDecoration(
            borderRadius:
                (selecteditem == i) ? BorderRadius.circular(50) : null,
            color: (selecteditem == i) ? Colors.black : null),
        child: Icon(
          icons,
          color: Colors.white,
        ),
      ),
    );
  }
}
