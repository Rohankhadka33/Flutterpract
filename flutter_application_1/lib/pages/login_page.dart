import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class login_page extends StatefulWidget {
  @override
  State createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlue,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/login.png"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter your Password",
                      labelText: "Password",
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 35),
              ),
              style: TextButton.styleFrom(minimumSize: Size(100, 60)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeroute);
              },
            )
          ],
        ),
      ),
    );
  }
}
