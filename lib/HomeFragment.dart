import 'package:flutter/material.dart';

import 'StoryItem.dart';
import 'main.dart';

class HomeFragment extends StatefulWidget {
  final PageController pageController;
  const HomeFragment(this.pageController,{Key? key}) : super(key: key);

  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {

  List<Story> stories = [
    Story(
        name: "its_attitude",
        image:
        "https://static.wikia.nocookie.net/ben10/images/1/15/Implants_Vilgax.png/revision/latest?cb=20210315202005"),
    Story(
        name: "echo echo",
        image:
        "https://static.wikia.nocookie.net/ben10/images/7/77/FullEchoEchoArt1.png/revision/latest?cb=20210515172155"),
    Story(
        name: "Swampfire",
        image:
        "https://static.wikia.nocookie.net/ben10/images/d/d0/Swampfire_uaf_official.png/revision/latest?cb=20141129034947"),
    Story(
        name: "Rath",
        image:
        "https://static.wikia.nocookie.net/ben10/images/5/56/Rath_1.png/revision/latest?cb=20210314024327"),
    Story(
        name: "Way Big",
        image:
        "https://static.wikia.nocookie.net/ben10/images/e/ee/UAF_WayBig.png/revision/latest?cb=20200521143317")
  ];

  List<Post> posts = [
    Post(
        name: "Villgax",
        profilePic:
        "https://static.wikia.nocookie.net/ben10/images/1/15/Implants_Vilgax.png/revision/latest?cb=20210315202005",
        tagLine: "New Villain",
        image:
        "https://static.wikia.nocookie.net/legendsofthemultiuniverse/images/e/e9/Vilgax_Defeated_Again.png/revision/latest?cb=20131004060618",
        likes: "16,098",
        comments: "700",
        time: "8 hours"),
    Post(
        name: "Echo Echo",
        profilePic:
        "https://static.wikia.nocookie.net/ben10/images/7/77/FullEchoEchoArt1.png/revision/latest?cb=20210515172155",
        tagLine: "Tbagged",
        image:
        "https://i.pinimg.com/originals/82/e2/8e/82e28eb6aaf3b209bdbbf6ee6c278c23.jpg",
        likes: "1000",
        comments: "621",
        time: "2 minutes"),
    Post(
        name: "Swampfire",
        profilePic:
        "https://static.wikia.nocookie.net/ben10/images/d/d0/Swampfire_uaf_official.png/revision/latest?cb=20141129034947",
        tagLine: "Went Ultimate",
        image: "https://i.ytimg.com/vi/0wx4xaTwk88/hqdefault.jpg",
        likes: "6969",
        comments: "699",
        time: "3 minutes")
  ];
  var isDividerVisible = false;
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      controller.position.addListener(getDivider);
    });
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'images/instagram.png',
                color: Colors.white,
              ),
              Row(
                children: [
                  Image.asset('images/add_post.png',
                      width: 30, color: Colors.white),
                  GestureDetector(
                    onTap: () => widget.pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.linear),
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Image.asset('images/messenger.png',
                            width: 25, color: Colors.white)),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: (isDividerVisible)
              ? const Color(0x66878584)
              : Colors.transparent,
        ),
        Expanded(
          child: ListView.builder(
              controller: controller,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              shrinkWrap: true,
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return getStoryBar();
                } else {
                  return createPost(index - 1);
                }
              }),
        )
      ],
    );
  }

  Widget getStoryBar() {
    return Column(
      children: [
        SizedBox(
          height: 99,
          child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: stories.length + 1,
              itemBuilder: (BuildContext context, int position) =>
                  createStory(position)),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0.1, 0, 0),
          color: const Color(0x66878584),
          width: double.infinity,
          height: 1,
        )
      ],
    );
  }

  Widget createStory(int index) {
    if (index == 0) {
      return Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomRight,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/ben10.jpg'),
                radius: 30,
              ),
              Positioned(
                bottom: -3.2,
                right: -3.2,
                child: ClipOval(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Image.asset(
                      'images/add_icon.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 9, 0, 0),
            child: const Text("Your Story",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.normal)),
          ),
        ],
      );
    }

    return StoryItem(stories[index - 1]);
  }

  Widget createPost(int index) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    getProfilePic(posts[index].profilePic),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          posts[index].name,
                          style: const TextStyle(color: Colors.white),
                        ))
                  ],
                ),
                Image.asset(
                  'images/menu.png',
                  height: 25,
                  width: 25,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Image.network(posts[index].image, width: double.infinity),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 8, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'images/like.png',
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Image.asset(
                          'images/comment.png',
                          height: 22,
                          width: 22,
                          color: Colors.white,
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Image.asset(
                          'images/share.png',
                          height: 22,
                          width: 22,
                          color: Colors.white,
                        )),
                  ],
                ),
                Image.asset(
                  'images/save.png',
                  height: 25,
                  width: 25,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Text(
                "${posts[index].likes} likes",
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600),
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: posts[index].name,
                      style: const TextStyle(
                          fontFamily: 'Roboto', fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: " " + posts[index].tagLine,
                      style: const TextStyle(
                          fontFamily: 'Roboto', fontWeight: FontWeight.normal)),
                ]),
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Text(
                "View all ${posts[index].comments} comments",
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal),
              )),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12.8,
                      child: ClipOval(
                        child: Image.network(posts[index].profilePic),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(13, 0, 0, 0),
                        child: const Text(
                          "Add a comment...",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                              fontSize: 12),
                        ))
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "❤️",
                      style: TextStyle(color: Colors.red),
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: const Text("🙌",
                            style: TextStyle(color: Colors.yellow))),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Image.asset(
                          "images/small_add_icon.png",
                          height: 14,
                          width: 14,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Text(
              "${posts[index].time} ago",
              style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
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
