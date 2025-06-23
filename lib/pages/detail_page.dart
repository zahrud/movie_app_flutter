import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map movie;

  DetailPage({required this.movie});

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://image.tmdb.org/t/p/w500${movie['poster_path']}';

    return Scaffold(
      appBar: AppBar(title: Text(movie['title'])),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(imageUrl),
            SizedBox(height: 16),
            Text(
              movie['overview'],
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                SizedBox(width: 8),
                Text('${movie['vote_average']} / 10'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
