import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pswdController = TextEditingController();

  String? email;
  String? pswd;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
            ),
            ElevatedButton(
              onPressed: () async {
                email = emailController.text;
                pswd = pswdController.text;

                SharedPreferences prefs = await SharedPreferences.getInstance();

                if (email == 'mansi26@gmail.com' && pswd == 12345) {
                  Navigator.of(context).pushReplacementNamed('/');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Wrong"),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                  ));
                }
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
