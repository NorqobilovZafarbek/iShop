



import 'package:flutter/material.dart';

import '../clock_page.dart';

class Clok extends StatefulWidget {
  final String image;
  final String text;
  final String pricetext;
  const Clok({Key? key, required this.image, required this.text, required this.pricetext}) : super(key: key);

  @override
  State<Clok> createState() => _ClokState();
}

class _ClokState extends State<Clok> {

  void nextPage(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Clock_Page(),));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SizedBox(
            width: 154,
            height: 180,
            child: InkWell(
                child: Image.asset(widget.image),
              onTap: nextPage,
            ),
          ),
        ),
        Text(
          widget.text,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            fontFamily: "Poppins",
            color: Color(0xFF030303),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .01,),
        Text(
          "The Apple watch series 3 is designed\n for people who want to keep their\n fitness game on point.",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10,
            fontFamily: "Poppins",
            color: Color(0xFF777070),
          ),
        ),
        Row(
          children: [
            Text(
              widget.pricetext,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xFF030303),
              ),
            ),
            IconButton(onPressed: (){}, icon: Image.asset("assets/images/+.png"),),
          ],
        ),
      ],
    );
  }
}
