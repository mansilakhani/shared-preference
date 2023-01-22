import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preference/screens/loginpage.dart';

class Intro_Page extends StatefulWidget {
  const Intro_Page({Key? key}) : super(key: key);

  @override
  State<Intro_Page> createState() => _Intro_PageState();
}

class _Intro_PageState extends State<Intro_Page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Login_Page(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            FlutterLogo(
              size: 150,
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
