import 'package:amazonclone/pages/signin_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  static const id = "SignUpPage";

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _doSignUp() {
    if (emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        nameController.text.isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Amazon",
            style: TextStyle(
              fontSize: 45,
              fontFamily: 'Billabong',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
            height: 48,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: nameController,
              style: const TextStyle(fontSize: 16),
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
            height: 48,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: emailController,
              style: const TextStyle(fontSize: 16),
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
            height: 48,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              style: const TextStyle(fontSize: 16),
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
            height: 48,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)),
            child: MaterialButton(
              onPressed: () {
                _doSignUp();
              },
              color: Colors.redAccent,
              child: const Text(
                "Sign Up",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, SignInPage.id);
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
