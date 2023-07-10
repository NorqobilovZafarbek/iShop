import 'package:flutter/material.dart';

import 'widget/navigation_model.dart';
import 'widget/clok.dart';
import 'widget/watges_page.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List<NavigationItem> items = [
    NavigationItem(title: "Watches", isSelected: true),
    NavigationItem(
      title: "Macbooks",
    ),
    NavigationItem(title: "iPhones"),
  ];
  final controller = PageController();

  void changeState(NavigationItem e) {
    setState(() {
      for (int i = 0; i < items.length; i++) {
        if (e.title == items[i].title) {
          items[i].isSelected = true;
          controller.animateToPage(i, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
        } else {
          items[i].isSelected = false;
        }
      }
    });
  }


  List<Widget> pages = [
    const WatchesPage(),
    const Scaffold(
      backgroundColor: Colors.yellow,
    ),
    const Scaffold(
      backgroundColor: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 93,
            height: double.infinity,
            child: ColoredBox(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/Vector.png",
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: items
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(bottom: 40),
                                child: InkWell(
                                  onTap: () => changeState(e),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RotatedBox(
                                          quarterTurns: -1,
                                          child: Text(
                                            e.title,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w400,
                                                color: e.isSelected
                                                    ? Colors.white
                                                    : Colors.white38),
                                          )),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        height: 42,
                                        width: 1,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2,
                                              color: e.isSelected
                                                  ? Colors.white
                                                  : Colors.transparent),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                    Image.asset("assets/images/clarity_home-line.png"),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView(scrollDirection: Axis.vertical,controller: controller, children: pages),
          ),
        ],
      ),
    );
  }
}
