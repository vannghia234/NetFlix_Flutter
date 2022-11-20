import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../jsons/home_json.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: getBodyHome(),
    );
  }

  Widget getBodyHome() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      //  banner image
                      Container(
                        height: 500,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/banner.webp',
                                ))),
                      ),
                      // container dùng boxdecorate để opacity image
                      Container(
                        height: 500,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Colors.black.withOpacity(0.85),
                              Colors.black.withOpacity(0)
                            ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter)),
                      ),
                      // image title
                      Container(
                        width: size.width,
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/title_img.webp',
                              width: 300,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Exciting - Sci-Fi Drama - Sci-Fi Adventure',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // row myList, Play, Info
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'My List',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            right: 13, left: 8, bottom: 2, top: 2),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Play',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Info',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  // MyList
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'My List',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                              children: List.generate(mylist.length, (index) {
                            return Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 110,
                              height: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.green,
                                  image: DecorationImage(
                                      image: AssetImage(mylist[index]['img']),
                                      fit: BoxFit.cover)),
                            );
                          })),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //Popular List
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Popular on Netflix',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                              children:
                                  List.generate(popularList.length, (index) {
                            return Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 110,
                              height: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.green,
                                  image: DecorationImage(
                                      image:
                                          AssetImage(popularList[index]['img']),
                                      fit: BoxFit.cover)),
                            );
                          })),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // Trending Now
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Trending Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                              children:
                                  List.generate(trendingList.length, (index) {
                            return Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 110,
                              height: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.green,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          trendingList[index]['img']),
                                      fit: BoxFit.cover)),
                            );
                          })),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // Trending Now
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Netflix Anime',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                              children:
                                  List.generate(animeList.length, (index) {
                            return Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 165,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.green,
                                  image: DecorationImage(
                                      image:
                                          AssetImage(animeList[index]['img']),
                                      fit: BoxFit.cover)),
                            );
                          })),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // originalList
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Netflix Original',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                              children:
                                  List.generate(originalList.length, (index) {
                            return Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 165,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.green,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          originalList[index]['img']),
                                      fit: BoxFit.cover)),
                            );
                          })),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: size.width,
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/logo.ico',
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.collections_bookmark,
                                  color: Colors.white,
                                  size: 35,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/profile.jpeg',
                                  width: 26,
                                  height: 26,
                                  fit: BoxFit.cover,
                                ))
                          ],
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'TV Show',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Movies',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          )
                        ]),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
