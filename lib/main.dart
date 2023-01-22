import 'package:flutter/material.dart';
import 'package:shared_preference/screens/homepage.dart';
import 'package:shared_preference/screens/intro_screen.dart';
import 'package:shared_preference/screens/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool? isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  bool? isIntroVisited = prefs.getBool('isIntroVisited') ?? false;

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: (isIntroVisited == false)
        ? 'intro_screen'
        : (isLoggedIn == false)
            ? 'loginpage'
            : '/',
    routes: {
      '/': (context) => const HomePage(),
      'loginpage': (context) => const Login_Page(),
      'intro_screen': (context) => const Intro_Page(),
    },
  ));
}
