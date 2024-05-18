// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test_app/mywidgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("My App")),
            body: ListView(
              children: [
                MovieItem(
                  name: "Shaun the Sheep",
                  description: "Nice cartoon",
                  rating: "9.3",
                  image: "https://picsum.photos/id/1/120/120",
                ),
                MovieItem(
                  name: "Terminator",
                  description: "ACtion",
                  rating: "8.2",
                  image: "https://picsum.photos/id/2/120/120",
                ),
                MovieItem(
                  name: "Aliens",
                  description: "Horror",
                  rating: "8.2",
                  image: "https://picsum.photos/id/3/120/120",
                ),
              ],
            )));
  }
}
