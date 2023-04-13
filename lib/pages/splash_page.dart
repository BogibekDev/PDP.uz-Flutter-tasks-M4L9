import 'dart:async';

import 'package:amazonclone/pages/home_page.dart';
import 'package:amazonclone/pages/signin_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const id = "SplashPage";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isSigned = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/images/ic_logo.png',
                width: 80,
                height: 80,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Center(
                    child: Text(
                      "From Amazon",
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _initTimer() {
    Timer(const Duration(seconds: 2), () {
      if (isSigned) {
        Navigator.pushReplacementNamed(context, HomePage.id);
      } else {
        Navigator.pushReplacementNamed(context, SignInPage.id);
      }
    });
  }
}
