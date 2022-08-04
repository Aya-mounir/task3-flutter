import 'package:flutter/material.dart';
import 'package:task/Screens/levels.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x2a1860ff),
      body: Stack(
        children: [
          ClipPath(
              clipper: MyClipper(),
              child: Container(
                color: const Color(0xf34133D49),
              )),
          Container(
            margin: const EdgeInsets.only(top: 110, left: 85),
            child: Image.asset("assets/images/2695359-middle.png"),
          ),
          Container(
              margin: const EdgeInsets.only(top: 265, left: 90),
              child: const Text("Quizzless",
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.w900,
                      fontSize: 50),
                  textAlign: TextAlign.center)),
          Container(
            margin: const EdgeInsets.only(top: 360, left: 135),
            child: const Text("Let's play!",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 390, left: 86),
            child: const Text("play now and level up",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                )),
          ),
          Center(
              child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Levels()));
            },
            child: Container(
              alignment: Alignment.center,
              width: 250,
              height: 60,
              margin: const EdgeInsets.only(top: 180),
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Play Now",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
          )),
          Center(
              child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: Container(
              alignment: Alignment.center,
              width: 250,
              height: 60,
              margin: const EdgeInsets.only(top: 360),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo),
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "about",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
          )),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 350);
    path.quadraticBezierTo(size.width / 4, 290 /*180*/, size.width / 2, 305);
    path.quadraticBezierTo(3 / 4 * size.width, 320, size.width, 260);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
