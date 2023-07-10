

import 'package:flutter/material.dart';

import 'clok.dart';


class WatchesPage extends StatelessWidget {
  const WatchesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, top: 20, right: 15),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/Vector (1).png"))
            ],
          ),
          const Text(
            "Apple",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              color: Color(0xFF777070),
            ),
          ),
          const Text(
            "Watches",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xFF030303),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          Column(
            children: [
              const Clok(
                image:
                "assets/images/pnghost_apple-watch-series-3-nike-apple-watch-series-2-nike 1.png",
                text: "Series 3",
                pricetext: "\$295.00",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              const Clok(
                image:
                "assets/images/pnghost_apple-watch-series-3-nike-apple-watch-series-2-nike 1 (1).png",
                text: "Series 3",
                pricetext: "\$295.00",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              const Clok(
                image:
                "assets/images/pnghost_apple-watch-series-3-nike-apple-watch-series-2-nike 1 (1).png",
                text: "Series 3",
                pricetext: "\$295.00",
              ),
            ],
          )
        ],
      ),
    );
  }
}
