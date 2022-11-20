import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_byflutter/pages/home_page.dart';

import '../jsons/root_app_json.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  late int activeTab = 0;

  Widget build(BuildContext context) {
    Widget getBody() {
      return IndexedStack(
        index: activeTab,
        children: [
         HomePage(),
          Center(
            child: Text(
              'Comming soon',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              'Search',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              'Download',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      );
    }
    Widget getFooter() {
      return Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.black),
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
                          style: TextStyle(color: Colors.white),
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

