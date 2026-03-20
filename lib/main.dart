// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';

import "package:intro_views_flutter/intro_views_flutter.dart";

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final pages = [
    PageViewModel(
      pageColor: const Color(0xFF03A9F4),
      bubble: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
      ),
      body: const Text(
        'Page 1',
        style: const TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      bodyTextStyle: const TextStyle(
        fontFamily: 'MyFont',
        color: Colors.white,
      ),
      mainImage: Builder(
        builder: (context) {
          return Image.asset(
            "assets/images/sample1.png",
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.height * 0.4,
          );
        },
      ),
    ),
    PageViewModel(
      pageColor: const Color(0xFF03A9F4),
      bubble: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
      ),
      body: const Text(
        'Page 2',
        style: const TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      bodyTextStyle: const TextStyle(
        fontFamily: 'MyFont',
        color: Colors.white,
      ),
      mainImage: Builder(
        builder: (context) {
          return Image.asset(
            "assets/images/sample2.png",
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.height * 0.4,
          );
        },
      ),
    ),
    PageViewModel(
      pageColor: const Color(0xFF03A9F4),
      bubble: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
      ),
      body: const Text(
        'Page 3',
        style: const TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      bodyTextStyle: const TextStyle(
        fontFamily: 'MyFont',
        color: Colors.white,
      ),
      mainImage: Builder(
        builder: (context) {
          return Image.asset(
            "assets/images/sample3.png",
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.height * 0.4,
          );
        },
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inro Views Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          showNextButton: true,
          showBackButton: true,
          onTapBackButton: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}

class IntroViewFlutter {}

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}
