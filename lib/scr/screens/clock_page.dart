import 'package:flutter/material.dart';

class Clock_Page extends StatefulWidget {
  const Clock_Page({Key? key}) : super(key: key);

  @override
  State<Clock_Page> createState() => _Clock_PageState();
}

class _Clock_PageState extends State<Clock_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 40, top: 40, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context,Clock_Page());
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/images/images_2.png"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Image.asset(
                    "assets/images/pnghost_apple-watch-series-3-nike-apple-watch-series-2-nike 2.png"),
              ),
              SizedBox(height: 30,),
              Text(
                "Series 3",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  fontFamily: "Poppins",
                  color: Color(0xFF030303),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Text(
                "The Apple watch series 3 is designed for\n people who want to keep their fitness game\n on point.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  fontFamily: "Poppins",
                  color: Color(0xFF777070),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "\$295.00",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Color(0xFF030303),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      width: 28,
                      height: 33,
                      child: Image.asset("assets/images/+.png"),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60,),
              SizedBox(
                height: 52,
                width: 308,
                child: ElevatedButton(onPressed: (){}, child: Text("PROCEED TO BUY",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xFF030303),
                 ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 52,
                width: 308,
                child: ElevatedButton(onPressed: (){}, child: Text("ADD TO CART",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.white,
                   side: BorderSide(
                     width: 2.5,
                     color: Color(0xFF030303),
                   )
                 ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
