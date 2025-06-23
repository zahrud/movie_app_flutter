import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final Map movie;

  MovieCard({required this.movie});

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://image.tmdb.org/t/p/w500${movie['poster_path']}';

    return Card(
      margin: EdgeInsets.all(8),
      elevation: 4,
      child: Row(
        children: [
          Image.network(imageUrl, height: 120, width: 80, fit: BoxFit.cover),
          SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                movie['title'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
