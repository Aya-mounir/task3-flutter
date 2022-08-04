import 'package:flutter/material.dart';
import 'package:task/Screens/home_screen.dart';
class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen() ,
    );
  }
}
