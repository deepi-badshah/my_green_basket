import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_greenbasket/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';

import 'package:my_greenbasket/screens/auth_ui/welcome/welcome.dart';
import 'package:my_greenbasket/screens/custom_bottom_bar/custom_bottom_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();

    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    Timer(
      const Duration(seconds: 3),
      () => StreamBuilder(
        stream: FirebaseAuthHelper.instance.getAuthChange,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const CustomBottomBar();
          }
          return const Welcome();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
            child: Center(
                child: Image.asset(
              "assets/images/logo1.png",
              // width: Dimensions.splashImg,
              width: 200,
            )),
          ),
          const SizedBox(height: 20),
          Center(
              child: Image.asset(
            "assets/images/tag_line.png",
            // width: Dimensions.splashImg,
            width: 200,
          )),
        ],
      ),
    );
  }
}
