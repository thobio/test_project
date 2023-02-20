import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../../../utils/custom_views/custom_appbar.dart';
import '../../../utils/custom_views/search_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const AppBarCustom(
            height: 100,
            smallTitle: "Hello,",
            bigTitle: "Jonathan!",
            isImageNeeded: true,
            imageURL: "./assets/images/profile.jpg",
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: Column(children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                  width: context.width,
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: SearchWiget(controller: controller),
                      ),
                      Expanded(
                        child: Card(
                          shadowColor: const Color(0xFFE0EAF6),
                          color: const Color(0xFF205AF1),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: const Icon(Icons.face),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text(
                      "Popular Job",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(
                          0xFF153163,
                        ),
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Show all",
                        style: TextStyle(
                          color: Color(
                            0xFFB2AEC0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: context.width,
                  height: 170,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, indexint) {
                        return Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    left: 8.0,
                                    right: 8.0,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      "./assets/images/profile.jpg",
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Spotify",
                                    style: TextStyle(
                                      color: Color(
                                        0xFFB2AEC0,
                                      ),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.0,
                                    top: 5.0,
                                  ),
                                  child: Text(
                                    "User Interface Designer",
                                    style: TextStyle(
                                      color: Color(
                                        0xFF153163,
                                      ),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "20 Jobs Available",
                                    style: TextStyle(
                                      color: Color(
                                        0xFF153163,
                                      ),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Stack(
                                        fit: StackFit.loose,
                                        children: [
                                          const Text(
                                            "Tokyo, Japan",
                                            style: TextStyle(
                                              color: Color(
                                                0xFFB2AEC0,
                                              ),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Container(
                                            width: 200,
                                          ),
                                          const Positioned(
                                            bottom: 0,
                                            right: 0,
                                            height: 20,
                                            width: 20,
                                            child: Icon(
                                              Icons.arrow_right_alt,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        "Latest Job",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Color(
                            0xFF153163,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Container(
                  width: context.width,
                  height: 400,
                  child: ListView.builder(
                    itemBuilder: (context, indexInt) {
                      return Card(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, bottom: 8.0, right: 10, left: 10),
                              child: Image.asset(
                                "./assets/images/profile.jpg",
                                height: 100,
                                width: 80,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 15.0, left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 8.0),
                                      child: Text("Google"),
                                    ),
                                    Text(
                                      textWidthBasis:
                                          TextWidthBasis.longestLine,
                                      "Senior Product Designer",
                                      softWrap: true,
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0, right: 10.0),
                              child: Text("2 Days ago."),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ]),
            ),
          )),
    );
  }
}
