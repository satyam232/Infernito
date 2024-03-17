import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container appBar(double height) {
  return Container(
    decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
    height: height * 0.22,
    padding: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 30),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "20/12/2024",
                      style: TextStyle(color: Colors.white60),
                    ),
                    Text(
                      "Satyam Rana",
                      style: TextStyle(color: Colors.white60),
                    )
                  ],
                ),
              ],
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.check_box,
                    color: Colors.white,
                    size: 30,
                  ),
                  Image.asset("assets/ALLAssets/avatar.png")
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: height * 0.03,
        ),
        CupertinoSearchTextField(
          backgroundColor: Colors.white,
          placeholder: "Search favourite Beverages",
        )
      ],
    ),
  );
}
