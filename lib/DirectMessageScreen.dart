import 'dart:ui';

import 'package:flutter/material.dart';

class DirectMessageScreen extends StatefulWidget {
  final PageController pageController;

  const DirectMessageScreen(this.pageController, {Key? key}) : super(key: key);

  @override
  _DirectMessageScreenState createState() => _DirectMessageScreenState();
}

class _DirectMessageScreenState extends State<DirectMessageScreen> {
  List<Group> groups = [
    Group(
        groupName: "Heroes 101",
        lastMessage: "Seen by Aditya +5",
        seen: true,
        images: [
          "https://static.wikia.nocookie.net/ben10/images/c/c8/Max_tenyson_poses_%281%29.png/revision/latest?cb=20200510173221",
          "https://static.wikia.nocookie.net/ben10fanfiction/images/1/17/Azmuth_uaf.png/revision/latest?cb=20170903063643"
        ]),
    Group(
        groupName: "Julie Yamamoto",
        lastMessage: "See you",
        seen: false,
        images: [
          "https://static.wikia.nocookie.net/ben10/images/4/40/Julie_full_profil.png/revision/latest?cb=20191110041731"
        ]),
    Group(
        groupName: "Kevin",
        lastMessage: "See you at Gym Bro • 1w",
        seen: false,
        images: [
          "https://i.pinimg.com/originals/98/b4/3a/98b43a66861f1b52de5d9a0f18e22c32.jpg"
        ]),
    Group(
        groupName: "Gwen Tennyson",
        lastMessage: "Leave him alone",
        seen: true,
        images: [
          "https://static.wikia.nocookie.net/ben10/images/9/9e/Gwen_Tennyson_-_ben-10-alien-force_photo.PNG/revision/latest/scale-to-width-down/1200?cb=20190831055053"
        ]),
    Group(groupName: "groupName", lastMessage: "Nice One", seen: true, images: [
      "https://static.wikia.nocookie.net/ben10/images/a/a4/Charmcaster_day.png/revision/latest?cb=20190413055758"
    ]),
    Group(
        groupName: "Kai Green",
        lastMessage: "Knights are over",
        seen: false,
        images: [
          "https://static.wikia.nocookie.net/ben10/images/0/0b/Future_kai.png/revision/latest/top-crop/width/360/height/450?cb=20141130190333&path-prefix=es"
        ]),
    Group(
        groupName: "Lucy Mann",
        lastMessage: "Call me then",
        seen: false,
        images: [
          "https://static.wikia.nocookie.net/ben10/images/5/51/Omniverse_Lucy.png/revision/latest?cb=20190612104153"
        ]),
    Group(
        groupName: "Dr. Animo",
        lastMessage: "That's gonna be last time",
        seen: false,
        images: [
          "https://static.wikia.nocookie.net/ben10/images/f/f6/Doctor_Animo.png/revision/latest?cb=20141116141944"
        ]),
    Group(
        groupName: "Todd Maplewood",
        lastMessage: "Thanks Bro",
        seen: true,
        images: [
          "https://static.wikia.nocookie.net/ben10/images/d/d3/Todd_New.png/revision/latest?cb=20201225131755"
        ]),
    Group(
        groupName: "Councilwoman Liang",
        lastMessage: "Thanks Mam",
        seen: true,
        images: [
          "https://static.wikia.nocookie.net/ben10/images/6/6f/Councilwoman_Liang_.png/revision/latest?cb=20200812065334"
        ]),
    Group(
        groupName: "Baron Highway",
        lastMessage: "Table Done",
        seen: true,
        images: [
          "https://static.wikia.nocookie.net/ben10/images/c/c7/Baron_Highway_New.png/revision/latest/top-crop/width/360/height/360?cb=20210116125756"
        ])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 45, 20, 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => widget.pageController.animateToPage(0,
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.linear),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: const Text(
                        "ben_.07",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    )
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'images/call.png',
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ))
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            decoration: const BoxDecoration(
                color: Color(0xff262626),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Icon(
                    Icons.search,
                    color: Color(0xffa1a1a1),
                    size: 25,
                  ),
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 8, 0, 8),
                            isDense: true,
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color: Color(0xffa1a1a1), fontSize: 17)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Messages",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Roboto', fontSize: 16),
                ),
                Text(
                  "Requests",
                  style: TextStyle(
                      color: Colors.blue, fontFamily: 'Roboto', fontSize: 16),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  itemCount: groups.length,
                  itemBuilder: (BuildContext context, int index) =>
                      getChatItem(index)))
        ],
      ),
    );
  }

  Widget getChatItem(int index) {
    var seen = groups[index].seen;
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              getGroupPic(groups[index].images),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      groups[index].groupName,
                      style: TextStyle(
                          color:
                              (seen) ? const Color(0xffa1a1a1) : Colors.white),
                    ),
                    Text(
                      groups[index].lastMessage,
                      style: TextStyle(
                          color:
                              (seen) ? const Color(0xffa1a1a1) : Colors.white),
                    ),
                  ],
                ),
              ),
              (!seen)
                  ? Container(
                      height: 9,
                      width: 9,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                    )
                  : Container()
            ],
          ),
          Icon(Icons.camera_alt_outlined,
              color: (seen) ? const Color(0xffa1a1a1) : Colors.white)
        ],
      ),
    );
  }

  Widget getGroupPic(List<String> images) {
    if (images.length == 1) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.white,
        ),
        height: 50,
        width: 50,
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(images[0]),
        ),
      );
    } else {
      return SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.white,
              ),
              height: 40,
              width: 40,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(images[0]),
              ),
            ),
            Positioned(
                top: 10,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      color: Colors.black),
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.white,
                    ),
                    height: 40,
                    width: 40,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(images[1]),
                    ),
                  ),
                ))
          ],
        ),
      );
    }
  }
}

class Group {
  late String groupName, lastMessage;
  late List<String> images;
  late bool seen;

  Group(
      {required this.groupName,
      required this.lastMessage,
      required this.seen,
      required this.images});
}
