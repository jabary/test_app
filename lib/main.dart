// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test_app/models/movie.dart';
import 'package:test_app/mywidgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void toggleFavorite(int index) {
    setState(() {
      movies[index].isFavorite = !movies[index].isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("My App")),
            body: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (BuildContext context, int index) {
                  return MovieItem(
                    movie: movies[index],
                    setFavorite: () {
                      toggleFavorite(index);
                    },
                  );
                })));
  }
}

List<Movie> movies = [
  Movie(
      name: "Test1",
      description: "test1 description",
      rating: "9.1",
      image: "https://picsum.photos/id/1/120/120",
      isFavorite: true),
  Movie(
      name: "Test2",
      description: "test2 description",
      rating: "8.1",
      image: "https://picsum.photos/id/2/120/120",
      isFavorite: false),
  Movie(
      name: "Test3",
      description: "test3 description",
      rating: "7.1",
      image: "https://picsum.photos/id/3/120/120",
      isFavorite: true),
  Movie(
      name: "Test4",
      description: "test4 description",
      rating: "6.1",
      image: "https://picsum.photos/id/4/120/120",
      isFavorite: false),
  Movie(
      name: "this is the title of movie",
      description: "test4 description",
      rating: "6.1",
      image: "https://picsum.photos/id/4/120/120",
      isFavorite: true),
];
