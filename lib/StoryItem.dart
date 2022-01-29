


import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

class StoryItem extends StatefulWidget {
  final Story story;
  const StoryItem(this.story,{Key? key}) : super (key:key);

  @override
  _StoryItemState createState() => _StoryItemState();
}

class _StoryItemState extends State<StoryItem> {
  double initialSize = 70;
  double marginTop = 0.0;
  void animateSize(){
    initialSize -= 3;
    setState(() {});
    Timer(const Duration(milliseconds: 150), increaseBackToNormal);
  }
  void increaseBackToNormal(){
    initialSize += 3;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      child: GestureDetector(
        onTap: animateSize,
        child: Container(
          margin: const EdgeInsets.fromLTRB(14, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedContainer(
                height: initialSize,
                width: initialSize,
                duration: const Duration(milliseconds: 150),
                child: Container(
                    padding: const EdgeInsets.all(2),
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
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(32)),
                      child: Container(
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            border: Border.all(
                              width: 1.0,
                            ),
                          ),
                          child: Image.network(widget.story.image)),
                    )),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, marginTop, 0, 0),
                child: Text(
                  widget.story.name,
                  style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 13),
                ),
              )
            ],
          ),
        ),
      ),
    );;
  }
}
