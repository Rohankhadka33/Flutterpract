import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final int days = 30;
  final String Name = "adf";
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter project"),
      ),
      body: Center(
        child: Container(
            child: Text(
                "what the $days what us so intresting so heyyo going $Name")),
      ),
      drawer: Drawer(),

      
      
    );
  }
}
