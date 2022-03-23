// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:credit_clan_interview/ui/splash_screen/index.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          theme: ThemeData(
            inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(),
            ),
            scaffoldBackgroundColor: Colors.white,
            fontFamily: "Std-Medium",
          ),
          debugShowCheckedModeBanner: false,
          title: 'Lag Genie',
      home: const SplashScreen(),
    );
  }
}
