import 'dart:async';
import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:instagram_1/DirectMessageScreen.dart';
import 'package:instagram_1/HomeScreen.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'BottomNavigation.dart';
import 'StoryItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var pageController = PageController();
  ScrollPhysics physics = const ClampingScrollPhysics();
  var physicsStreamController = StreamController<ScrollPhysics>.broadcast();
  @override
  void initState() {
    physicsStreamController.stream.listen((event) {
      physics = event;
      setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return PageView(
      controller: pageController,
      physics: physics,
      children: [HomeScreen(pageController,physicsStreamController),DirectMessageScreen(pageController)],
    );
  }




}

Widget getProfilePic(String url) {
  return Container(
    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 36.0,
          height: 36.0,
          padding: const EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color(0xffCA1D7E),
              Color(0xffE35157),
              Color(0xffF2703F)
            ], end: Alignment.bottomLeft, begin: Alignment.topRight),
            color: Colors.black,
            borderRadius: BorderRadius.circular(38),
            border: Border.all(
              width: 1,
            ),
          ),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(32)),
              child: Container(
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  border: Border.all(
                    width: 1.0,
                  ),
                ),
                child: Image.network(url),
              )),
        )
      ],
    ),
  );
}

class Story {
  String image, name;

  Story({required this.name, required this.image});
}

class Post {
  String name, profilePic, tagLine, image, likes, comments, time;

  Post(
      {required this.name,
      required this.profilePic,
      required this.tagLine,
      required this.image,
      required this.likes,
      required this.comments,
      required this.time});
}
