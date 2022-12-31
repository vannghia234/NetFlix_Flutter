import 'package:flutter/material.dart';
import 'package:netflix_clone_byflutter/pages/comingsoon_page.dart';
import 'package:netflix_clone_byflutter/pages/download_page.dart';
import 'package:netflix_clone_byflutter/pages/home_page.dart';
import 'package:netflix_clone_byflutter/pages/search_page.dart';

import '../jsons/root_app_json.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  late int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    Widget getBody() {
      return IndexedStack(
        index: activeTab,
        children: const [
         HomePage(),
         ComingSoonPage(),
          SearchPage(),
          DownloadPage()
        ],
      );
    }
    Widget getFooter() {
      return Container(
        height: 80,
        decoration: const BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  items.length,
                      (index) => GestureDetector(
                    onTap: () {
                      activeTab = index;
                      setState(() {
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          items[index]['icon'],
                          color: Colors.white,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          items[index]['text'],
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ))),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      // resizeToAvoidBottomInset: false,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }
}

