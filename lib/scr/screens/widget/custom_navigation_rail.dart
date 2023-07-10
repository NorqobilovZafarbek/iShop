

import 'package:flutter/material.dart';


class Custom_navigation_Rail extends StatefulWidget {
  const Custom_navigation_Rail({Key? key}) : super(key: key);

  @override
  State<Custom_navigation_Rail> createState() => _Custom_navigation_RailState();
}

class _Custom_navigation_RailState extends State<Custom_navigation_Rail> {
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: 0,
      trailing: Image.asset("assets/images/clarity_home-line.png"),
      leading: Image.asset("assets/images/Vector.png"),
      backgroundColor: const Color(0xFF030303),
      destinations: [
        NavigationRailDestination(icon: Image.asset("assets/images/clarity_home-line.png"), label: Text( "text")),
        NavigationRailDestination(icon: Image.asset("assets/images/clarity_home-line.png"), label: Text( "text")),
      ],
    );
  }
}



// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: NavigationRail(
                backgroundColor: Color(0xFF030303),
                selectedIndex: 0,
                destinations: [
                  NavigationRailDestination(
                    icon: RotatedBox(
                      quarterTurns: -1,
                      child: Icon(Icons.home),
                    ),
                    label: Text('Home',style: TextStyle(color:Colors.yellow),),
                  ),
                  NavigationRailDestination(
                    icon: RotatedBox(
                      quarterTurns: -1,
                      child: Icon(Icons.settings,color: Colors.white,),
                    ),
                    label: RotatedBox(
                      quarterTurns: -1,
                      child: Text('Settings',style: TextStyle(color:Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
