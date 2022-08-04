import 'package:flutter/material.dart';
import 'package:task/Screens/home_screen.dart';
import 'package:task/widgets/level_card.dart';

class Levels extends StatefulWidget {
  const Levels({Key? key}) : super(key: key);

  @override
  State<Levels> createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x2a1860ff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50, top: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Center(
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: const Color(0xf34133D49),
                            borderRadius: BorderRadius.circular(50)),
                        margin: const EdgeInsets.only(top: 20, left: 20),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 110),
                    child: const Text("Levels",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                        LevelCard(
                            color: Colors.purpleAccent,
                            color2: Colors.deepPurpleAccent,
                            num: "01"),
                    LevelCard(
                        color: Colors.redAccent, color2: Colors.red, num: "03"),
                    LevelCard(
                        color: Colors.pinkAccent,
                        color2: Colors.pink,
                        num: "05"),
                    LevelCard(
                        color: Colors.greenAccent,
                        color2: Colors.green,
                        num: "07"),
                    LevelCard(
                        color: Colors.grey, color2: Colors.black38, num: "09"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LevelCard(
                        color: Colors.blueAccent,
                        color2: Colors.blue,
                        num: "02"),
                    LevelCard(
                        color: Colors.orangeAccent,
                        color2: Colors.orange,
                        num: "04"),
                    LevelCard(
                        color: Colors.yellowAccent,
                        color2: Colors.yellow,
                        num: "06"),
                    LevelCard(
                        color: Colors.deepPurpleAccent,
                        color2: Colors.deepPurple,
                        num: "08"),
                    LevelCard(
                        color: Colors.orange,
                        color2: Colors.deepOrange,
                        num: "10"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
