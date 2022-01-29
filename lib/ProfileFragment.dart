import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileFragment extends StatefulWidget {
  const ProfileFragment({Key? key}) : super(key: key);

  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  var isDividerVisible = false;
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      controller.position.addListener(getDivider);
    });
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 45, 0, 0),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "ben_.07",
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 21),
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey.shade400,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'images/add_post.png',
                      color: Colors.white,
                      height: 28,
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Icon(
                          Icons.menu_sharp,
                          color: Colors.white,
                          size: 28,
                        ))
                  ],
                )
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: (isDividerVisible)
                ? const Color(0x66878584)
                : Colors.transparent,
          ),
          Expanded(
            child: ListView(
              controller: controller,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              scrollDirection: Axis.vertical,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('images/ben10.jpg'),
                      ),
                      Column(
                        children: [
                          const Text(
                            "0",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 18),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                                color: Colors.grey.shade200,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "163",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 18),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                color: Colors.grey.shade200,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "213",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 18),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                color: Colors.grey.shade200,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: const Text(
                    "Ben 10",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    "youtube.com/watch?v=pHlFHgriDPE",
                    style: TextStyle(
                        color: Colors.blueGrey.shade400, fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border:
                                  Border.all(color: Colors.white, width: 0.5)),
                          child: const Padding(
                            padding: EdgeInsets.all(6),
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border:
                                Border.all(color: Colors.white, width: 0.5)),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.person_add_alt_1_sharp,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Story Highlights",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    "Keep your Favourite stories on profile",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 13.6,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  height: 85,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) =>
                          getHighLights(index)),
                ),
                SizedBox(
                  height: 250,
                  child: DefaultTabController(
                      length: 2,
                      child: Scaffold(
                        appBar: AppBar(
                          elevation: 0.0,
                          toolbarHeight: 20,
                          backgroundColor: Colors.black,
                          flexibleSpace: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              TabBar(
                                indicatorColor: Colors.white,
                                tabs: [
                                  Tab(icon: Icon(Icons.grid_3x3_outlined)),
                                  Tab(
                                    icon: Icon(Icons.person_pin_outlined),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        backgroundColor: Colors.black,
                        body: TabBarView(
                            children: [profileSegment(), Container()]),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: const Text(
                    "Complete your profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.5),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: "3 of 4 ",
                        style: TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                        text: "COMPLETE",
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                  ),
                ),
                SizedBox(
                    height: 250,
                    child: ListView(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        addBio(),
                        addYourName()
                      ],
                    )),
                const SizedBox(height: 10,)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget addBio() {
    return Container(
      width: 225,
      margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white.withOpacity(0.3), width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.3), width: 1)),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Icon(
                  Icons.assignment_ind,
                  color: Colors.white.withOpacity(0.9),
                  size: 30,
                ),
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: const Text(
                "Add bio",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Text(
                "Tell your followers a little bit about yourself",
                style: TextStyle(
                    fontSize: 14, color: Colors.white.withOpacity(0.5)),
                textAlign: TextAlign.center,
              )),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.blue),
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: const Text(
                  "Add Bio",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                )),
          )
        ],
      ),
    );
  }

  Widget addYourName() {
    return Container(
      width: 225,
      margin: const EdgeInsets.fromLTRB(0, 15, 20, 0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white.withOpacity(0.3), width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.white.withOpacity(0.3), width: 1)),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Icon(
                      Icons.person,
                      color: Colors.white.withOpacity(0.9),
                      size: 30,
                    ),
                  )),
              Positioned(
                top: 30,
                  left: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.black,
                    ),

                    child: Container(
                      margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: const Icon(Icons.check),
              ),
                  ))
            ],
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: const Text(
                "Add your name",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Text(
                "Add a name so your friends know it's you.",
                style: TextStyle(
                    fontSize: 14, color: Colors.white.withOpacity(0.5)),
                textAlign: TextAlign.center,
              )),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(5), color: Colors.black),
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: const Text(
                  "Edit Name",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                )),
          )
        ],
      ),
    );
  }

  Widget profileSegment() {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
      child: Column(
        children: [
          const Text(
            "Profile",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: Text(
              "When you share photos and videos they'll appear on your profile.",
              style:
                  TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: const Text(
              "Share your first photo or video",
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }

  Widget getHighLights(int index) {
    if (index == 0) {
      return Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 1)),
              child: const Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "New",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      );
    } else {
      return Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.withOpacity(0.5),
        ),
      );
    }
  }

  void getDivider() {
    if (controller.offset == 0.0) {
      if(isDividerVisible != false){
        isDividerVisible = false;
        setState(() {});
      }

    } else {
      if(isDividerVisible != true){
        isDividerVisible = true;
        setState(() {});
      }
    }

  }
}
