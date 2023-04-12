import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const id = "HomePage";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Amazon",
          style: TextStyle(fontFamily: 'Billabong',fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Welcome to Amazon",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
