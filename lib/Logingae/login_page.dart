import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:infenito/Logingae/widget/Center_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/ALLAssets/background.jpg"),
                    fit: BoxFit.cover)),
            child: Container(),
          ),
          Container(
            height: height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/ALLAssets/gradient.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
          ),
          CenterWidget(height, width, context)
        ],
      ),
    );
  }
}
