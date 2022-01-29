import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:instagram_1/BottomNavigation.dart';
import 'package:instagram_1/HomeFragment.dart';
import 'package:instagram_1/ProfileFragment.dart';

import 'StoryItem.dart';
import 'main.dart';

class HomeScreen extends StatefulWidget {
  PageController pageController;
  StreamController<ScrollPhysics> physicsStreamController;

  HomeScreen(this.pageController, this.physicsStreamController, {Key? key})
      : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var currentBody = SelectedItem.home;
  var selectedItem = StreamController<SelectedItem>.broadcast();

  @override
  void initState() {
    selectedItem.add(SelectedItem.home);
    super.initState();
    selectedItem.stream.listen((event) {
      currentBody = event;
      if (event != SelectedItem.home) {
        widget.physicsStreamController.add(
            const NeverScrollableScrollPhysics());
      } else {
        widget.physicsStreamController.add(const ClampingScrollPhysics());
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: getBody(),
      bottomNavigationBar: BottomNavigation(selectedItem),
    );
  }

  Widget getBody() {
    switch (currentBody) {
      case SelectedItem.home:
        {
          return HomeFragment(widget.pageController);
        }
      case SelectedItem.profile:
        {
          return const ProfileFragment();
        }
      default:
        {
          return Container();
        }
    }
  }


}
