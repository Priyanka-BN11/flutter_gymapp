// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';

import "package:intro_views_flutter/intro_views_flutter.dart";

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final pages = [
    PageViewModel(
      pageColor: const Color(0xFF03A9F4),
      bubble: Image.network(
          "https://img.icons8.com/ios-filled/100/ffffff/home.png"),
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
      mainImage: Image.network(
        "https://specials-images.forbesimg.com/imageserve/5d35eacaf1176b0008974b54/960x0.jpg?cropX1=790&cropX2=5350&cropY1=784&cropY2=3349",
        height: 100.0,
        width: 100.0,
        alignment: Alignment.center,
      ),
    ),
    PageViewModel(
      pageColor: const Color(0xFF03A9F4),
      bubble: Image.network(
          "https://img.icons8.com/ios-filled/100/ffffff/home.png"),
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
      mainImage: Image.network(
        "https://specials-images.forbesimg.com/imageserve/5d35eacaf1176b0008974b54/960x0.jpg?cropX1=790&cropX2=5350&cropY1=784&cropY2=3349",
        height: 100.0,
        width: 100.0,
        alignment: Alignment.center,
      ),
    ),
    PageViewModel(
      pageColor: const Color(0xFF03A9F4),
      bubble: Image.network(
          "https://img.icons8.com/ios-filled/100/ffffff/home.png"),
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
      mainImage: Image.network(
        "https://specials-images.forbesimg.com/imageserve/5d35eacaf1176b0008974b54/960x0.jpg?cropX1=790&cropX2=5350&cropY1=784&cropY2=3349",
        height: 100.0,
        width: 100.0,
        alignment: Alignment.center,
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
