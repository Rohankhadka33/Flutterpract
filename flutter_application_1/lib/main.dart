import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());

}

class DemoApp extends StatelessWidget {
  const DemoApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      child: Text("Welcome to my first flutterproject"),
      
    );
  }
}
