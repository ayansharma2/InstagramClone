import 'dart:async';

import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  StreamController<SelectedItem> currentItem;
  BottomNavigation(this.currentItem,{Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  void setCurrentSelectedItem(SelectedItem item){
    widget.currentItem.add(item);
    selectedState = item;
    setState(() {});
  }
  SelectedItem selectedState = SelectedItem.home;
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: 1,
          color: const Color(0x66878584),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30,12,30,12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                onTap: ()=>setCurrentSelectedItem(SelectedItem.home),
                child: Image.asset(
                  (selectedState == SelectedItem.home)
                      ? 'images/home_icon_filled.png'
                      : 'images/home_icon.png',
                  color: Colors.white,
                  height: 22,
                  width: 22,
                ),
              ),
              GestureDetector(
                onTap: ()=>setCurrentSelectedItem(SelectedItem.search),
                child: Image.asset(
                  (selectedState == SelectedItem.search)
                      ? 'images/search_filled.png'
                      : 'images/search.png',
                  color: Colors.white,
                  height: 25,
                  width: 25,
                ),
              ),
              GestureDetector(
                onTap: ()=>setCurrentSelectedItem(SelectedItem.reels),
                child: Image.asset(
                  (selectedState == SelectedItem.reels)
                      ? 'images/reels_filled.png'
                      : 'images/reels.png',
                  color: Colors.white,
                  height: 22,
                  width: 22,
                ),
              ),
              GestureDetector(
                onTap: ()=>setCurrentSelectedItem(SelectedItem.activity),
                child: Image.asset(
                  (selectedState == SelectedItem.activity)
                      ? 'images/like_filled.png'
                      : 'images/like.png',
                  color: Colors.white,
                  height: 22,
                  width: 22,
                ),
              ),
              GestureDetector(
                onTap: ()=>setCurrentSelectedItem(SelectedItem.profile),
                child: Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                          color: (selectedState == SelectedItem.profile) ? Colors.white : Colors.transparent,
                          width: 2
                      )
                  ),
                  child: const CircleAvatar(
                    radius: 24,
                    backgroundImage:AssetImage('images/ben10.jpg'),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

enum SelectedItem { home, search, reels, activity, profile }
