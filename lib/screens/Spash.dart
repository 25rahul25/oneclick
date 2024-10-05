import 'dart:async';
import 'package:flutter/material.dart';
import 'package:one_click/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'bnb_screen.dart';

class Spash extends StatefulWidget {
  const Spash({super.key});

  @override
  State<Spash> createState() => _SpashState();
}

class _SpashState extends State<Spash> {
  late bool? isLogin;

  void loadData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    isLogin = pref.getBool("isLogin");
  }

  @override
  void initState() {
    super.initState();
    loadData();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
            isLogin??false ? const BnbScreen() : const LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
            child: SizedBox(
          height: 70,
          child: Image.asset(
            "assets/temp/Group 375.png",
            height: 50,
          ),
        )),
      ),
    );
  }
}
