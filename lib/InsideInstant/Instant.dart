import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InsideInstant extends StatefulWidget {
  const InsideInstant({super.key});

  @override
  State<InsideInstant> createState() => _InsideInstantState();
}

class _InsideInstantState extends State<InsideInstant> {
  int selected = 0;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              "assets/ALLAssets/Cup.png",
              height: height * 0.5, // Adjust height as needed
              width: width, // Adjust width as needed
              fit: BoxFit.cover, // Adjust fit as needed
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height * 0.55,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage(
                      "assets/ALLAssets/background.jpg"), // Corrected typo
                  fit: BoxFit.cover, // Adjust fit as needed
                ),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 0.3),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white.withOpacity(0.1)),
                    child: SingleChildScrollView(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Latte",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: Text(
                                    "1",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white38),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 12,
                                ),
                                Text(
                                  "(478)",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white38),
                                ),
                              ],
                            ),
                            Text(
                              "Caffè latte is a milk coffee that is made up of one or two shots of espresso, steamed milk, and a final, thin layer of frothed milk on top.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 11),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Choice of Cup Filling",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              children: [
                                ChoiceTags("Full", 0),
                                ChoiceTags("1/2 Full", 1),
                                ChoiceTags("3/4 Full", 2),
                                ChoiceTags("1/4 Full", 3),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Choice of Milk",
                              style: TextStyle(color: Colors.white),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ChoiceButtons(width, "Skim Milk"),
                                      ChoiceButtons(width, "Full Cream Milk"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ChoiceButtons(width, "Almond Milk"),
                                      ChoiceButtons(width, "Full Crea, Milk"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ChoiceButtons(width, "Soa Milk"),
                                      ChoiceButtons(width, "Oat Milk"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ChoiceButtons(
                                          width, "Lactus Free Milk Milk"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Choice of Suget",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ChoiceButtons(width, "Suger X1"),
                                      ChoiceButtons(width, "Suger X2"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ChoiceButtons(width, "Suger X3"),
                                      ChoiceButtons(width, "Suger X4"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(10),
                                width: width - 40,
                                height: height * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black.withOpacity(0.5)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.rectangle_outlined,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Text(
                                          "High Priority",
                                          style:
                                              TextStyle(color: Colors.white54),
                                        )
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 30),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green),
                                      child: Text(
                                        "Submit",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row ChoiceButtons(double width, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(child: customSwitch()),
        SizedBox(width: width * 0.03),
        Text(
          title,
          style: TextStyle(color: Colors.white54),
        )
      ],
    );
  }

  Widget ChoiceTags(String items, int i) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = i;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: (selected == i) ? Colors.green : Colors.white,
            borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Text(
          items,
          style:
              TextStyle(color: (selected == i) ? Colors.white : Colors.black),
        ),
      ),
    );
  }

  Widget customSwitch() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSwitched = !isSwitched;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 10, // Adjust height as needed
        width: 25, // Adjust width as needed
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSwitched ? Colors.blueAccent : Colors.grey,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              top: 1,
              left: isSwitched ? 16 : 1,
              right: isSwitched ? 1 : 16,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
