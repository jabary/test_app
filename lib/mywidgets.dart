import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final String name;
  final String description;
  final String rating;
  final String image;

  const MovieItem(
      {super.key,
      required this.name,
      required this.description,
      required this.rating,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Card(
        child: Row(children: [
          Image.network(image),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(description),
              Container(
                alignment: Alignment.bottomRight,
                child: Text(rating),
              )
            ],
          ))
        ]),
      ),
    );
  }
}
