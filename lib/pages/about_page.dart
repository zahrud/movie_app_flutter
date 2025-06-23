import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          'Movie Explorer dibuat dengan Flutter.\n\n'
          'Menggunakan TheMovieDB API.\n\n'
          'Dikembangkan oleh zahruddin id ',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
