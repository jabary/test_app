import 'package:flutter/material.dart';
import 'package:test_app/models/movie.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  const MovieItem({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Card(
        child: Row(children: [
          Image.network(movie.image),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                movie.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(movie.description),
              Container(
                alignment: Alignment.bottomRight,
                child: Text(movie.rating),
              )
            ],
          ))
        ]),
      ),
    );
  }
}
